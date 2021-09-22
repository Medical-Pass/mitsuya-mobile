# [Android] リリース用バイナリ生成コマンド
# 開発環境によって使い分ける
flutter build appbundle --release --target lib/main.dart
# flutter build apk --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart
# flutter build appbundle --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart