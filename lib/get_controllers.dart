// ignore: prefer_mixin
import 'package:flutter/widgets.dart';
import 'lifecycle.dart';
import 'list_notifier.dart';

// ignore: prefer_mixin
abstract class GlobalController extends ListNotifier with GlobalLifeCycleMixin {
  void update([List<Object>? ids, bool condition = true]) {
    if (!condition) {
      return;
    }
    if (ids == null) {
      refresh();
    } else {
      for (final id in ids) {
        refreshGroup(id);
      }
    }
  }
}

class FrameworkCore {
  static WidgetsBinding get instance {
    return WidgetsFlutterBinding.ensureInitialized();
  }
}
