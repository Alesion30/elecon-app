################################################################################################
## 初期化
################################################################################################
setup: # セットアップ
	dart pub global deactivate fvm
	dart pub global activate fvm
	npm install

dependencies: # インストール
	fvm install
	fvm flutter pub get

crean: # クリーン
	fvm flutter clean
	rm -rf ios/Pods ios/Podfile.lock


################################################################################################
## Flutterコマンド
################################################################################################
format: # 整形
	fvm flutter format lib/
	fvm flutter pub run import_sorter:main

analyze: # コードチェック
	fvm flutter analyze

format-analyze: # 整形 + コードチェック
	@make format
	@make analyze


################################################################################################
## コード生成
################################################################################################
gen-l10n: # 言語ファイル生成
	fvm flutter gen-l10n

build-runner: # コード生成
	fvm flutter pub run build_runner build --delete-conflicting-outputs


################################################################################################
## apk ビルド
################################################################################################
apk-build: # apkビルド
	fvm flutter build apk

apk-build-elevatorLeft: # エレベーター左
	fvm flutter build apk --dart-define=APPTYPE=elevatorLeft

apk-build-elevatorRight: # エレベーター右
	fvm flutter build apk --dart-define=APPTYPE=elevatorRight

apk-build-hall9F: # 9F
	fvm flutter build apk --dart-define=APPTYPE=hall9F

apk-build-hall1F: # 1F
	fvm flutter build apk --dart-define=APPTYPE=hall1F


################################################################################################
## その他
################################################################################################
ios-build: # iosビルド
	fvm flutter build ios

devices: # デバイス一覧
	fvm flutter devices

ls-keystore-debug: # デバッグ環境のキーストア情報を表示
	keytool -list -v -alias androiddebugkey -keystore ~/.android/debug.keystore
