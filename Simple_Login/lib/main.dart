import 'package:Flutter/welcome_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/Login": (BuildContext context) => new First(),
   //   "/Welcome": (BuildContext context) => new Welcome_simple(),
        "/Welcome": (BuildContext context) => new Welcome_animated(),
      },
      title: 'Design Login',
      debugShowCheckedModeBanner: false,
      home: new First(),
    );
  }
}

class First extends StatefulWidget {
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  bool notShown = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding:
            EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0, bottom: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0, top: 35.0),
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Login",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 45.0,
                          color: Color(0xFF1C2129),
                          fontFamily: "wqy"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      width: 35.0,
                      height: 2.0,
                    )
                  ]),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 25.0),
                  ),
                  TextField(
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        color: Color(0xff1C2129), fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 8.0),
                        labelStyle: TextStyle(
                          color: Color(0xffA4ABB2),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                        labelText: "Email Address/Mobile Number",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5)))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35.0),
                  ),
                  TextField(
                    cursorColor: Colors.grey,
                    style: TextStyle(
                      color: Color(0xff1C2129),
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                    ),
                    obscureText: notShown,
                    decoration: InputDecoration(
                        isDense: false,
                        contentPadding: EdgeInsets.only(top: 16.0),
                        labelStyle: TextStyle(
                            color: Color(0xffA4ABB2),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            decorationStyle: TextDecorationStyle.double),
                        labelText: "Password",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5))),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: InkWell(
                            onTap: () { 
                              setState(() {
                              notShown = !notShown;});},
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            child: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                              size: 15.0,
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      onTap: (){print("Forgot Password");},
                        child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color(0xffA4ABB2),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.0),
                  ),
                  Container(
                    width: double.infinity,
                    height: 45.0,
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    decoration: BoxDecoration(),
                    child: RaisedButton(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      splashColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/Welcome");
                      },
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Text("or login with",
                      style: TextStyle(
                          color: Color(0xffA4ABB2),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400)),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  new SocialButtons()
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            InkWell(
                onTap: (){print("SIGN UP");},
                highlightColor: Colors.transparent,
                child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: "You Don't have an account?",
                      style: TextStyle(color: Color(0xffA4ABB2), fontSize: 12.0)),
                  TextSpan(
                      text: " SIGN UP",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              child: Image.asset(
                "assets/img/google.png",
                width: 16.0,
              ),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1.5),
                borderRadius:
                    BorderRadius.all(Radius.circular(30.0)),
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(30.0),
            onTap: () {},
            child: Container(
              child: Image.asset("assets/img/facebook.png",
                  width: 20.0, height: 16.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1.5),
                borderRadius:
                    BorderRadius.all(Radius.circular(30.0)),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              child: Image.asset(
                "assets/img/tweeter.png",
                width: 20.0,
              ),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1.5),
                borderRadius:
                    BorderRadius.all(Radius.circular(30.0)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
