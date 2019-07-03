import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'LoginUI.dart';
void main() {
  // full screen mode 
  SystemChrome.setEnabledSystemUIOverlays([]);
  // fix screen orientation only for portrait
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginUI',
      debugShowCheckedModeBanner: false,
       // to change theme colors
      theme: ThemeData(
        primarySwatch:
            MaterialColor(Color.fromRGBO(238, 111, 136, 1).value, <int, Color>{
          50: Colors.blue[900],
          100: Colors.blue[900],
          200: Colors.blue[900],
          300: Colors.blue[900],
          400: Colors.blue[900],
          500: Colors.blue[900],
          600: Colors.blue[900],
          700: Colors.blue[900],
          800: Colors.blue[900],
          900: Colors.blue[900],
        }),
      ),
      home: LoginUI(startColor: Color.fromRGBO(238, 140, 45, 1),endColor: Color.fromRGBO(238, 111, 136, 1),),
    );
  }
}