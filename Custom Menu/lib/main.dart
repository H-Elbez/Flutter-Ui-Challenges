import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'Menu.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginUI',
      debugShowCheckedModeBanner: false,
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Menu(contenu: Center(
        child: Container(
          padding: EdgeInsets.only(top:100),
          width: 250,
          height: 250,
          child: Image(image: AssetImage("img/cat1.gif")),),
      ),)
      
    );
  }
}
