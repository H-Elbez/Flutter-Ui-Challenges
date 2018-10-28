import 'package:flutter/material.dart';

class Welcome_simple extends StatefulWidget {
  _Welcome_simpleState createState() => _Welcome_simpleState();
}

class _Welcome_simpleState extends State<Welcome_simple>
    with SingleTickerProviderStateMixin {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                height: double.infinity,
                child: Image.asset(
                  "assets/img/welcome.jpg",
                  fit: BoxFit.cover,
                  color: Color(0x090A0C).withOpacity(0.9),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "WELCOME",
                              style: TextStyle(
                                  fontFamily: "wqy",
                                  color: Colors.white,
                                  fontSize: 32.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                            ),
                            Text(
                              "Let's Get Started",
                              style: TextStyle(
                                  letterSpacing: 0.6,
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)),
                          color: Colors.white,
                        ),
                        width: double.infinity,
                        height: 250.0,
                        padding:
                            EdgeInsets.only(top: 40.0, right: 50.0, left: 50.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Select Language",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 40.0),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.black,
                              highlightElevation: 0,
                              elevation: 0,
                              splashColor: Colors.grey,
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ENGLISH",
                                    style: TextStyle(
                                        color: Colors.grey[300],
                                        fontSize: 12.0),
                                  ),
                                  Image.asset(
                                    "assets/img/uk.png",
                                    width: 25.0,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.white,
                              highlightElevation: 0,
                              elevation: 0,
                              splashColor: Colors.grey,
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.grey.withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "SPANISH",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.0),
                                  ),
                                  Image.asset(
                                    "assets/img/spain.png",
                                    width: 25.0,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
