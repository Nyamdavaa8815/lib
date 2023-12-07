import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app.dart';

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // if (kIsWeb) {
  //   await FacebookAuth.i.webAndDesktopInitialize(
  //     appId: "", // TODO: Add facebook api
  //     cookie: true,
  //     xfbml: true,
  //     version: "v18.0",
  //   );
  // }
  runApp(const MyApp());
}
