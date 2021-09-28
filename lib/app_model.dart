import 'dart:async';

import 'package:app_review/app_review.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as Auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logger.dart';
import 'models/user_state/user_state.dart';

bool isDebug = false;
bool isAdmin = false;

class AppModel {
  // ignore: close_sinks
  final _userStateStreamController = StreamController<UserState>();
  Stream<UserState> get userState => _userStateStreamController.stream;

  UserState? _state;

  /// コンストラクタ
  AppModel() {
    _init(); // 初期化処理は非同期で行うため await しない
  }

  /// 初期化処理
  Future _init() async {
    // packageの初期化処理
    await Firebase.initializeApp();

    // debugモードかどうかを判定しグローバル変数にいれる
    assert(isDebug = true);

    // if (isDebug) {
    //   await DotEnv().load(fileName: './env/.env');
    // } else {
    //   await DotEnv().load(fileName: './env/.env_prod');
    // }

    // ログイン状態の変化を監視し、変更があればUserStateをstreamで通知する
    Auth.FirebaseAuth.instance.authStateChanges().listen((firebaseUser) async {
      UserState state = UserState.noLogin;
      if (firebaseUser == null) {
        return;
      }
      final user = await _fetchUser(firebaseUser);
      if (user != null) {
        state = UserState.member;
      }

      // 前回と同じ通知はしない
      if (_state == state) {
        return;
      }
      _state = state;

      // ログイン状態
      if (_state == UserState.member) {
        await _configurePushNotification();
        await _showAppReviewDialog();
      }
      logger.info(_state);
      _userStateStreamController.sink.add(_state!);
    });
  }

  /// ユーザを取得する
  Future<User?> _fetchUser(Auth.User firebaseUser) async {
    if (firebaseUser == null) {
      return null;
    }

    logger.info(firebaseUser);
    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(firebaseUser.uid)
        .get();

    if (!doc.exists) {
      return null;
    }
    // User user = User.doc(doc);
    User user = firebaseUser;

    return user;
  }

  // 参考: https://pub.dev/packages/firebase_messaging/example
  Future _configurePushNotification() async {
    await FirebaseMessaging.instance.requestPermission(
      sound: true,
      badge: true,
      alert: true,
    );

    // tokenをusersに保存する
    // tokenは特定のユーザーにプッシュ通知を打つために必要
    final token = await FirebaseMessaging.instance.getToken();
    await _updateUserToken(token!);

    // トピックに登録
    // cloud functionsからは、このトピックに対して通知を打つ
    await FirebaseMessaging.instance.subscribeToTopic('all');

    // 新メンバー通知トピック
    await _subscribeMemberTopic();
  }

  // 初ビルド後3日以上のユーザーにレビュー促進
  Future _showAppReviewDialog() async {
    final prefs = await SharedPreferences.getInstance();
    final firstBuildDayKey = 'first_build_day';
    final int? firstBuildDay = prefs.getInt(firstBuildDayKey);
    if (firstBuildDay == null) {
      // 初ビルドの場合、ビルド日をローカルに記録
      await prefs.setInt(
          firstBuildDayKey, DateTime.now().millisecondsSinceEpoch);
    } else {
      // 初ビルドでない場合
      final firstBuildAt = DateTime.fromMillisecondsSinceEpoch(firstBuildDay);
      final difference = DateTime.now().difference(firstBuildAt);
      int daysSinceFirstBuild = difference.inDays;
      final isReviewCompletedKey = 'isReviewCompletedKey';
      bool isReviewCompleted = prefs.getBool(isReviewCompletedKey) ?? false;
      if (daysSinceFirstBuild >= 3 && !isReviewCompleted) {
        // 初ビルドから3日以上経っている && レビューしたことがない場合
        await AppReview.requestReview;
        prefs.setBool(isReviewCompletedKey, true);
      }
    }
  }

  Future _updateUserToken(String token) async {
    try {
      final firebaseUser = Auth.FirebaseAuth.instance.currentUser;
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseUser!.uid)
          .update(
        {
          'token': token,
        },
      );
    } catch (e) {
      print(e.toString());
    }
  }

  Future _subscribeMemberTopic() async {
    final prefs = await SharedPreferences.getInstance();
    final memberNotificationKey = 'member_notification';
    final checkMemberNotification =
        prefs.getBool(memberNotificationKey) ?? false;

    // まだ購読してなかった場合はここで強制的に購読させる
    if (!checkMemberNotification) {
      await FirebaseMessaging.instance.subscribeToTopic('member');
      await prefs.setBool(memberNotificationKey, true);
    }
  }
}
