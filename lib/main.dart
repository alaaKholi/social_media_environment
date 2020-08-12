import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:social_media_app/screens/home_screen.dart';
import 'package:social_media_app/screens/login_screen.dart';
import 'package:social_media_app/screens/tealLayout.dart';

//import 'data.dart';

void main() {
  runApp(DevicePreview(
    // enabled: !kReleaseMode,
    builder: (context) => MyApp(),
  ));
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Environment',
      theme: ThemeData(
        // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        //textTheme: GoogleFonts.solwayTextTheme(
        //  Theme.of(context).textTheme,
        //  ),
        primaryColor: Colors.green[400],
        //  visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
