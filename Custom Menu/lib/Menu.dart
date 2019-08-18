import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final Widget contenu;
  Menu({@required this.contenu});
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  bool menuIsOpen;
  int screen;
  Animation animation;
  Tween<double> movement;
  @override
  void initState() {
    screen = 0;
    menuIsOpen = false;
    animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300),
        value: 1,
        lowerBound: 0.7,
        upperBound: 1)
      ..addListener(() => setState(() {
            if (animationController.isCompleted) menuIsOpen = !menuIsOpen;
          }));

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    movement = Tween<double>(begin: 0.7, end: 0);
    movement.animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void moveMenu(String action) {
    if(action == "open" && animation.value == 1.0){
      animationController.animateTo(0.7,
            duration: Duration(milliseconds: 300));}
   
    if(action == "close" && animation.value != 1.0){
  animationController.animateTo(1,
            duration: Duration(milliseconds: 300));
    }
    //animationController.forward();
  }

  Widget getContent() {
    switch (screen) {
      case 0:
        return widget.contenu;
      case 1:
        return Center(
          child: Container(
            padding: EdgeInsets.only(top: 100),
            width: 300,
            height: 300,
            child: Image(image: AssetImage("img/cat4.gif")),
          ),
        );
      case 2:
        return Center(
          child: Container(
            padding: EdgeInsets.only(top: 100),
            width: 300,
            height: 300,
            child: Image(image: AssetImage("img/cat2.gif")),
          ),
        );

      case 3:
        return Center(
          child: Container(
            padding: EdgeInsets.only(top: 100),
            width: 320,
            height: 320,
            child: Image(image: AssetImage("img/cat3.gif")),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blueGrey[900],
        child: GestureDetector(
          onPanUpdate: (update){
            if(update.delta.dx > 5){
              moveMenu("open");
            }
            if(update.delta.dx < 5){
              moveMenu("close");
            }
          },
          child: Stack(
            children: <Widget>[
              // Menu
              Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 5,
                right: 0,
                child: IconButton(
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                left: -1 * MediaQuery.of(context).size.width / 2,
                child: Transform.translate(
                  offset: Offset(
                      movement.evaluate(animation) *
                          MediaQuery.of(context).size.width *
                          3.7,
                      0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height,
                    child: Drawer(
                      elevation: 0,
                      child: Stack(
                        children: <Widget>[
                            Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[900],
                              image: DecorationImage(
                              image: AssetImage("img/Menu.jpg"),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              colorFilter: ColorFilter.mode(Colors.blueGrey[900], BlendMode.color)
                            ))),
                               Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.blueGrey[900],Colors.blueGrey[900].withOpacity(0),Colors.blueGrey[900]],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.2,0.5,0.8]
                              )
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ListTile(
                                        onTap: () {
                                          setState(() {
                                            screen = 0;
                                            moveMenu("close");
                                            getContent();
                                          });
                                        },
                                        title: Text(
                                          "Home",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        trailing: Icon(
                                          Icons.ac_unit,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Divider(
                                        height: 10,
                                      ),
                                      ListTile(
                                        onTap: () {
                                          setState(() {
                                            screen = 1;
                                            moveMenu("close");
                                            getContent();
                                          });
                                        },
                                        title: Text(
                                          "Element 2",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        trailing: Icon(
                                          Icons.access_time,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Divider(
                                        height: 10,
                                      ),
                                      ListTile(
                                        onTap: () {
                                          setState(() {
                                            screen = 2;
                                            moveMenu("close");
                                            getContent();
                                          });
                                        },
                                        title: Text(
                                          "Element 3",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        trailing: Icon(
                                          Icons.account_balance_wallet,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Divider(
                                        height: 10,
                                      ),
                                      ListTile(
                                        onTap: () {
                                          setState(() {
                                            screen = 3;
                                            moveMenu("close");
                                            getContent();
                                          });
                                        },
                                        title: Text(
                                          "Element 4",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        trailing: Icon(
                                          Icons.add_circle_outline,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Contenu
              Transform.translate(
                offset: Offset(
                    movement.evaluate(animation) *
                        MediaQuery.of(context).size.width *
                        3,
                    0),
                child: ScaleTransition(
                  scale: animation,
                  child: Stack(
                    children: <Widget>[
                      Container(color: Colors.white, child: getContent()),
                      IconButton(
                        icon: Icon(animationController.value == 1.0?Icons.menu:Icons.arrow_back_ios),
                        onPressed: () => animationController.value == 1.0 ? moveMenu("open"):moveMenu("close"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}