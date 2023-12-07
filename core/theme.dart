import 'package:flutter/gestures.dart' show PointerDeviceKind;
import 'package:flutter/material.dart' show MaterialScrollBehavior, ThemeData;

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

// light
ThemeData lightTheme() {
  return ThemeData.light();
}

// Dark
ThemeData darkTheme() {
  return ThemeData.dark();
}
