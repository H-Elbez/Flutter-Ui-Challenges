import 'package:flutter/material.dart';
import 'dart:math';

class LoginUI extends StatefulWidget {
  var startColor,endColor;
  LoginUI({
    @required this.startColor,
    @required this.endColor
  });

  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  var controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              // Draw backgkround circles
              CustomPaint(
                painter: BackCirclesPainter(startColor: widget.endColor,
                endColor: widget.startColor),
              ),
              // PageView for the two screens
              PageView(
                controller: controller,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      // first screen
                      Container(
                        padding: EdgeInsets.all(10),
                        child: CustomPaint(
                          painter: FirstScreenPainter(),
                          child: Container(
                            height: 200,
                            margin: EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                  ),
                                  Text(
                                    "LOGO",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.grey[700]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 50),
                                  ),
                                  TextField(
                                    cursorColor: Colors.grey,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300),
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(top: 8.0),
                                        labelStyle: TextStyle(
                                          color: Color(0xffA4ABB2),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.0,
                                        ),
                                        labelText: "Email",
                                        suffixIcon: Icon(Icons.email),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey
                                                    .withOpacity(0.5)))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                  ),
                                  TextField(
                                    cursorColor: Colors.grey,
                                    keyboardType: TextInputType.text,
                                    obscureText: true,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300),
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(top: 8.0),
                                        labelStyle: TextStyle(
                                          color: Color(0xffA4ABB2),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.0,
                                        ),
                                        labelText: "Password",
                                        suffixIcon: Icon(Icons.vpn_key),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey
                                                    .withOpacity(0.5)))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Forgot Password ?",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey[500]),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 40),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () {
                                            print("Login");
                                          },
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                gradient:
                                                    LinearGradient(colors: [
                                                  widget.startColor,
                                                  widget.endColor,
                                                ])),
                                            width: 210,
                                            height: 50,
                                            child: Text(
                                              "Login",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Positioned Buttons on the first screen

                      Positioned(
                          bottom: 48,
                          right: 14,
                          child: Container(
                            width: 35,
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.star_border),
                              mini: true,
                              highlightElevation: 0,
                              backgroundColor: widget.endColor,
                              elevation: 0,
                            ),
                          )),

                      Positioned(
                          bottom: 75,
                          left: 30,
                          child: Container(
                            width: 50,
                            child: FloatingActionButton(
                              onPressed: () {},
                              highlightElevation: 0,
                              child: Icon(Icons.group_work),
                              backgroundColor: Colors.red,
                              elevation: 0,
                            ),
                          )),
                      Positioned(
                          bottom: 40,
                          left: 108,
                          child: Container(
                            width: 50,
                            child: FloatingActionButton(
                              onPressed: () {},
                              highlightElevation: 0,
                              child: Icon(Icons.access_alarms),
                              backgroundColor: Colors.blue[700],
                              elevation: 0,
                            ),
                          )),
                      Positioned(
                          bottom: 5,
                          left: 185,
                          child: Container(
                            width: 50,
                            child: FloatingActionButton(
                              onPressed: () {},
                              highlightElevation: 0,
                              child: Icon(Icons.account_balance),
                              backgroundColor: Colors.blueAccent[300],
                              elevation: 0,
                            ),
                          )),

                      Positioned(
                          bottom: 8,
                          left: 13,
                          child: Container(
                            width: 35,
                            child: FloatingActionButton(
                              onPressed: () {
                                controller.nextPage(
                                    duration: Duration(milliseconds: 700),
                                    curve: Curves.easeOut);
                              },
                              child: Icon(Icons.arrow_upward),
                              mini: true,
                              highlightElevation: 0,
                              backgroundColor: widget.startColor,
                              elevation: 0,
                            ),
                          ))
                    ],
                  ),

                  // Second page

                  Container(
                    padding: EdgeInsets.all(10),
                    child: CustomPaint(
                        painter: SeconScreenPainter(),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Container(
                              height: 200,
                              margin: EdgeInsets.all(10),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                    ),
                                    Text(
                                      "LOGO",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.grey[700]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                    ),
                                    TextField(
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 8.0),
                                          labelStyle: TextStyle(
                                            color: Color(0xffA4ABB2),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0,
                                          ),
                                          labelText: "Name",
                                          suffixIcon: Icon(Icons.person),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey
                                                      .withOpacity(0.5)))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                    ),
                                    TextField(
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 8.0),
                                          labelStyle: TextStyle(
                                            color: Color(0xffA4ABB2),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0,
                                          ),
                                          labelText: "Email",
                                          suffixIcon: Icon(Icons.email),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey
                                                      .withOpacity(0.5)))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                    ),
                                    TextField(
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.text,
                                      obscureText: true,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 8.0),
                                          labelStyle: TextStyle(
                                            color: Color(0xffA4ABB2),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0,
                                          ),
                                          labelText: "Password",
                                          suffixIcon: Icon(Icons.vpn_key),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey
                                                      .withOpacity(0.5)))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                    ),
                                    TextField(
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.text,
                                      obscureText: true,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(top: 8.0),
                                          labelStyle: TextStyle(
                                            color: Color(0xffA4ABB2),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0,
                                          ),
                                          labelText: "Confirm Password",
                                          suffixIcon: Icon(Icons.vpn_key),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey
                                                      .withOpacity(0.5)))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 30),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
                                              print("SignUp");
                                            },
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    widget.startColor,
                                                    widget.endColor,
                                                  ])),
                                              width: 210,
                                              height: 50,
                                              child: Text(
                                                "SignUp",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 38,
                                right: 4,
                                child: Container(
                                  width: 35,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      controller.previousPage(
                                          duration: Duration(milliseconds: 700),
                                          curve: Curves.easeOut);
                                    },
                                    child: Icon(Icons.arrow_upward),
                                    mini: true,
                                    highlightElevation: 0,
                                    backgroundColor:
                                        widget.startColor,
                                    elevation: 0,
                                  ),
                                ))
                          ],
                        )),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

// Draw the white shape of the first screen

class FirstScreenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Drawing process

    final path1 = Path();
    path1.moveTo(0, 30);
    final Rect o1 = Rect.fromCircle(center: Offset(30, 30), radius: 30);
    path1.arcTo(o1, pi, pi / 2, false);

    final Rect o =
        Rect.fromCircle(center: Offset(size.width - 30, 30), radius: 30);
    path1.lineTo(size.width - 60, 0);
    path1.arcTo(o, (pi / 2) * 3, pi / 2, false);
    path1.lineTo(size.width, size.height - 70);

    final Rect o2 = Rect.fromCircle(
        center: Offset(size.width - 20, size.height - 60), radius: 20);
    path1.arcTo(o2, 0, (pi / 16) * 10, false);

    final Rect o3 =
        Rect.fromCircle(center: Offset(30, size.height - 190), radius: 30);
    path1.arcTo(o3, pi / 2 + 0.5, pi / 4, false);

    path1.close();

    var paint = Paint();
    paint.color = Colors.white;
    paint.strokeJoin = StrokeJoin.round;
    paint.strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.fill;

    // drawing the bottom part of the first screen background white space

    final path2 = Path();

    final path2Shadow = Path();

    path2Shadow.moveTo(-7, size.height + 20);
    final Rect o5 =
        Rect.fromCircle(center: Offset(10, size.height - 90), radius: 20);
    path2Shadow.lineTo(-7, size.height - 90);
    path2Shadow.arcTo(o5, pi, (pi / 16) * 10, false);
    path2Shadow.lineTo(250, size.height + 30);
    path2Shadow.close();

    path2.moveTo(0, size.height + 20);
    final Rect o4 =
        Rect.fromCircle(center: Offset(20, size.height - 25), radius: 20);
    path2.lineTo(0, size.height - 25);
    path2.arcTo(o4, pi, (pi / 16) * 10, false);
    path2.lineTo(180, size.height + 20);

    canvas.drawShadow(path1, Colors.black.withOpacity(0.3), 20.0, false);
    canvas.drawPath(path1, paint);
    canvas.drawShadow(path2Shadow, Colors.black.withOpacity(0.3), 20.0, false);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// Draw the white shape of the second screen

class SeconScreenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Drawing process

    final path2 = Path();

    path2.moveTo(0, -20);
    path2.lineTo(130, -20);

    final Rect o =
        Rect.fromCircle(center: Offset(size.width - 30, 85), radius: 30);
    path2.arcTo(o, ((pi / 2) * 3) + 0.5, (pi / 2) - 0.5, false);
    path2.lineTo(size.width, size.height);

    final Rect o2 = Rect.fromCircle(
        center: Offset(size.width - 20, size.height - 60), radius: 20);
    path2.arcTo(o2, 0, (pi / 16) * 10, false);

    final Rect o3 =
        Rect.fromCircle(center: Offset(30, size.height - 190), radius: 30);
    path2.arcTo(o3, pi / 2 + 0.5, pi / 4, false);

    path2.close();

    var paint = Paint();
    paint.color = Colors.white;
    paint.strokeJoin = StrokeJoin.round;
    paint.strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.fill;

    canvas.drawShadow(path2, Colors.black.withOpacity(0.25), 20.0, true);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

// Draw the colored circles in the back

class BackCirclesPainter extends CustomPainter {
  var startColor,endColor;
  BackCirclesPainter({
    @required this.startColor,
    @required this.endColor
  });
  @override
  void paint(Canvas canvas, Size size) {
    // Drawing process

    Rect rect = Rect.fromCircle(
      center: Offset(130, -30),
      radius: 300,
    );
    var paint = Paint();
    var paintWhite = Paint();
    final Gradient gradient = LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: <Color>[
        startColor,
        endColor,
      ],
    );
    paint.shader = gradient.createShader(rect);
    paintWhite.color = Colors.white.withAlpha(50);
    canvas.drawCircle(Offset(130, -30), 300, paint);
    canvas.drawCircle(Offset(-5, -5), 200, paintWhite);
    paintWhite.color = Colors.white.withAlpha(30);
    canvas.drawCircle(Offset(280, -60), 200, paintWhite);
    paintWhite.color = Colors.white.withAlpha(30);
    canvas.drawCircle(Offset(0, 300), 250, paintWhite);
    canvas.drawCircle(Offset(450, 470), 230, paint);
    canvas.drawCircle(Offset(350, 540), 180, paintWhite);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
