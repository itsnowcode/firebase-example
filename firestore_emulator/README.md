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
> cd firebase
> firebase emulators:start
```

### for Android emulator
- Launch the Android emulator
  - Launch from Android Studio
    1. Click menu [Tools -> AVD Manager]
    1. Click any ‚ŒLaunch emulator action icon
  - Launch from Shell

ex) for windows on Command Prompt
```
> cd C:\Users\{UserName}\AppData\Local\Android\sdk\emulator
> emulator -list-avds
Pixel_3_API_28
> emulator @Pixel_3_API_28
```

- Run application
```
> git clone https://github.com/itsnowcode/firebase-example.git
> cd firebase-example
> cd firestore_emulator
> flutter run
```
