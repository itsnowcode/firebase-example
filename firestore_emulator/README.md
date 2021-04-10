# firestore_emulator

A Cloud Firestore emulator example.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Usage

### Launch Firebase emulator
```
> git clone https://github.com/itsnowcode/firebase-example.git
> cd firebase-example/firebase
> firebase emulators:start
```

### Modify settings
- (for web) Modify firebaseConfig in web/index.html to real settings.
- (for Android, but doesn't work) Modify firebaseConfig in android/app/google-services.json to real settings.

### Run application
```
> cd firebase-example/firestore_emulator
> flutter run -d chrome --dart-define=IS_EMULATOR=true
```

## Notes
Check the operation of the Firebase emulator for Firestore.
- It works on the web.
- It doesn't work on the Android emulator.
- Haven't tried it on the iOS emulator.
