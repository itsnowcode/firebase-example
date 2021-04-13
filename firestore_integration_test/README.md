# firestore_integration_test

A Cloud Firestore integration test example.

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
> cd firebase-example/firestore_integration_test/fiorebase
> firebase emulators:start
```

### Run Chrome driver
```
> chromedriver.exe --port=4444
```

### Run integration tests
```
> cd firebase-example/firestore_integration_test
> flutter drive --driver=test_driver/integration_test.dart --target=integration_test/counter_test.dart -d web-server
```

### Known issues
- In index.html, Firebase or Firestore JavaScript library version is 8.0.0 and above then an error occurs.
- It succeeds when run in Flutter Web. But failed when run in Android Emulator.
- Not implemented in iOS emulator.
