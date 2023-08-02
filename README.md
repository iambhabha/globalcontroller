# globalcontroller

## Overview

Welcome to **globalcontroller**! This is a global working tool designed to be used anywhere and at any time, making your life easier and more efficient.

## How to use

## NetworkController Class

```dart
class NetworkController extends GlobalController {
  late StreamSubscription _subscription;

  @override
  void onInit() {
    // ... (the rest of your code goes here)
  }

  @override
  void onClose() {
    // ... (the rest of your code goes here)
  }
}
```

## DependencyInjection Class

```
class DependencyInjection {
  static void init() {
    Global.place<NetworkController>(NetworkController(), permanent: true);
  }
}
```

## important step

```
 Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await CacheMemory.hiveRegisterAdapter();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',
    androidProvider: AndroidProvider.playIntegrity,
    appleProvider: AppleProvider.deviceCheck,
  );
   ## DependencyInjection.init();
  runApp(const ProviderScope(child: Rootapp()));
}
```

## Features

- **Global Working:** Our package is engineered to function flawlessly in diverse environments worldwide, making it the perfect solution for any location.

- **24/7 Accessibility:** No more time restrictions! Utilize our package around the clock, empowering you to work at your own convenience.

- **User-Friendly:** We take simplicity seriously. Our package offers an intuitive and easy-to-use interface suitable for users of all skill levels.

- **Seamless Integration:** Enjoy a seamless experience by integrating our package with your preferred systems, software, and devices.

- **Continuous Updates:** We are dedicated to continuous improvement. Expect regular updates and feature enhancements to ensure you're always up-to-date.

## Installation

To use our package, follow these simple steps:

1. Clone the repository:

```bash
git clone https://github.com/your-username/your-repository.git
```
