import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'user_regist_view_model.freezed.dart';

@freezed
class UserRegistViewModelState with _$UserRegistViewModelState {
  factory UserRegistViewModelState({@Default('') String sample}) =
      _UserRegistViewModelState;
}

final userRegistViewModelProvider =
    StateNotifierProvider.autoDispose<UserRegistViewModel>(
        (ref) => UserRegistViewModel(ref.read));

class UserRegistViewModel extends StateNotifier<UserRegistViewModelState>
    with LocatorMixin {
  UserRegistViewModel(
    this._read,
  ) : super(UserRegistViewModelState()) {
    Future.delayed(Duration.zero, () async {});
  }

  final Reader _read;
  // UserNotifier get UserNotifier =>
  //     _read(userRegistNotifierProvider);

  final teamKey = GlobalKey<FormFieldState<String>>();
  final placeKey = GlobalKey<FormFieldState<String>>();
  final teamNumKey = GlobalKey<FormFieldState<String>>();
  final serviceKey = GlobalKey<FormFieldState<String>>();
  final serviceGenreKey = GlobalKey<FormFieldState<String>>();
  final serviceJobKey = GlobalKey<FormFieldState<String>>();
  final coWorkGoalKey = GlobalKey<FormFieldState<String>>();
  final serviceContentKey = GlobalKey<FormFieldState<String>>();
  final serviceProcessKey = GlobalKey<FormFieldState<String>>();
  final visionKey = GlobalKey<FormFieldState<String>>();
  final backgroundKey = GlobalKey<FormFieldState<String>>();

  // Future<void> onSave() async {
  //   if (!fieldKey.currentState!.validate()
  //       ) {
  //     return;
  //   }
  //
  //   await UserNotifier.onSave(   );
  // }
  //
  // Future<void> onUpdate(String id) async {
  //   if (!fieldKey.currentState!.validate() ||
  //      ) {
  //     return;
  //   }
  //
  //   await UserNotifier.onUpdate(
  //       id,
  //       const DateTimeStringConverter()
  //           .getDateTime(dateKey.currentState!.value!),
  //       int.parse(pointKey.currentState!.value!),
  //       const IntStringConverter()
  //           .getIntPoint(fieldKey.currentState!.value!.substring(0, 2)),
  //       activeNameKey.currentState!.value!,
  //       state.imagePath != '' ? File(state.imagePath) : null);
  // }
  //
  //
  // Future<User?> getFromId(String id) async {
  //   return UserNotifier.getFromId(id);
  // }
  //
  // Future<void> setOldData(String id) async {
  //   final result = await getFromId(id);
  //
  //   if (result == null) {
  //     return null;
  //   }
  //
  //   String imagePath = '';
  //
  //   if (result.field != null) {
  //     fieldKey.currentState?.didChange(kPointTextList[result.field - 1]);
  //   }
  //
  //   state = state.copyWith(imagePath: imagePath);
  // }
}
