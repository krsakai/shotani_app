# shotani_app

```
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
rm -rf ~/Library/Developer/Xcode/DerivedData/*
xcodebuild  -sdk "${TARGET_SDK}" -xcconfig "${CONFIG_FILE_PATH}"  -configuration Release clean build
```