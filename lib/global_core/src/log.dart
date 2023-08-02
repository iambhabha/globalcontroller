import 'dart:developer' as developer;
import 'global_main.dart';

///VoidCallback from logs
typedef LogWriterCallback = void Function(String text, {bool isError});

/// default logger from GetX
void defaultLogWriterCallback(String value, {bool isError = false}) {
  if (isError || Global.isLogEnable) {
    developer.log(value, name: 'Global Controller');
  }
}
