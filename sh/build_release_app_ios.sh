# [iOS] リリース用バイナリ生成コマンド
# 開発環境によって使い分ける
flutter build ios --release --target lib/main.dart
# flutter build ios --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart