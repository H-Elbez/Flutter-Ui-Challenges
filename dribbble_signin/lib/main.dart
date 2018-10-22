import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

// Main function

void main() {
  // Fixing Screen Orientation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // Acitvate Full Screen mode
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(new Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DribbbleSignIn",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.amber,
        primarySwatch: Colors.grey,
      ),
      home: new SignIn(),
    );
  }
}

class SignIn extends StatefulWidget {
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xff161515),
      body: Container(
          padding: EdgeInsets.all(40.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Welcome to the dribbble family",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.0,
                    fontSize: 11.0,
                    fontFamily: "wqy"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/img/dribbble.png",
                    width: 80.0,
                    color: Color(0xffff3e7d),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  Text("Sign in",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontFamily: "wqy"))
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              new SocialButton(
                icon: GroovinMaterialIcons.twitter,
                color: Colors.blueAccent,
              ),
              new SocialButton(
                icon: GroovinMaterialIcons.facebook,
                color: Colors.blue[900],
              ),
              new SocialButton(
                icon: GroovinMaterialIcons.google,
                color: Colors.red[900],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              TextField(
                cursorColor: Colors.white.withOpacity(0.4),
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Username or Email",
                    contentPadding:
                        EdgeInsetsDirectional.only(top: 27.0, bottom: 5.0),
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 12.0,
                    ),
                    enabled: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.8)))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white.withOpacity(0.4),
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    contentPadding:
                        EdgeInsetsDirectional.only(top: 27.0, bottom: 5.0),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 12.0),
                    enabled: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.8)))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              Container(
                height: 40.0,
                child: FlatButton(
                  onPressed: () => {},
                  color: Color(0xffff3e7d),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.white, fontSize: 14.0, fontFamily: "wqy"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Not a member ?",
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: 10.0)),
                    TextSpan(
                        text: " Sign up now",
                        style: TextStyle(
                            fontSize: 10.0, fontWeight: FontWeight.w500))
                  ],
                ),
              )
            ],
          )),
    );
  }
}

// SocialButtons definition

class SocialButton extends StatelessWidget {
  IconData icon;
  Color color;
  SocialButton({@required this.icon, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 5.0),
      child: OutlineButton(
        onPressed: () => {},
        highlightColor: color,
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 15.0,
        ),
      ),
    );
  }
}
