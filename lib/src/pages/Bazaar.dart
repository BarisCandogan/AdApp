import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/Icons/icons.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:project/src/pages/BillBoard.dart';

class homeDesign extends StatefulWidget {
  const homeDesign({Key? key}) : super(key: key);

  @override
  State<homeDesign> createState() => _homeDesignState();
}

class _homeDesignState extends State<homeDesign> {
  bool isPressed = false;
  int _currentIndex = 0;
  final List<Widget> _children = [Billboard()];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Scrollbar(
          thickness: 10,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: 270,
                              margin: EdgeInsets.only(top: 25, left: 25),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(33, 33, 33, 0.08),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.020,
                                    margin: EdgeInsets.only(right: 200),
                                    child: Text(
                                      "Filtre",
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 0.38)),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.035,
                                    margin: EdgeInsets.only(
                                      right: 170,
                                    ),
                                    child: Text(
                                      "Ayakkabı",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                      width: 270,
                                      decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 2.0,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.38))),
                                      )),
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 25, left: 25),
                            child: SvgPicture.asset(
                              iconSvg,
                              height: 40,
                            ),
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              top: 30,
                            ),
                            child: Column(
                              children: [
                                Image(
                                  fit: BoxFit.cover,
                                  alignment: Alignment.bottomCenter,
                                  image: AssetImage("assets/↳ 🖼 Image.png"),
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height:
                                      MediaQuery.of(context).size.height * 0.27,
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Text("Subtitle 1")),
                                    Container(
                                      margin: EdgeInsets.only(right: 15),
                                      child: IconButton(
                                        icon: Icon(Icons.favorite),
                                        color: isPressed
                                            ? Colors.red
                                            : Colors.black,
                                        onPressed: () {
                                          setState(() {
                                            isPressed = !isPressed;
                                          });
                                        },
                                      ),
                                    )
                                  ])),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              top: 15,
                            ),
                            child: Column(
                              children: [
                                Image(
                                  fit: BoxFit.cover,
                                  alignment: Alignment.bottomCenter,
                                  image: AssetImage("assets/↳ 🖼 Image.png"),
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height:
                                      MediaQuery.of(context).size.height * 0.27,
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Text("Subtitle 1")),
                                    Container(
                                      margin: EdgeInsets.only(right: 15),
                                      child: IconButton(
                                        icon: Icon(Icons.favorite),
                                        color: isPressed
                                            ? Colors.red
                                            : Colors.black,
                                        onPressed: () {
                                          setState(() {
                                            isPressed = !isPressed;
                                          });
                                        },
                                      ),
                                    )
                                  ])),
                        ],
                      ),
                      Container(
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                top: 15,
                              ),
                              child: Column(
                                children: [
                                  Image(
                                    fit: BoxFit.cover,
                                    alignment: Alignment.bottomCenter,
                                    image: AssetImage("assets/↳ 🖼 Image.png"),
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: MediaQuery.of(context).size.height *
                                        0.27,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.95,
                                height:
                                    MediaQuery.of(context).size.height * 0.055,
                                color: Color.fromRGBO(0, 0, 0, 0.3),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(left: 15),
                                          child: Text("Subtitle 1")),
                                      Container(
                                        margin: EdgeInsets.only(right: 15),
                                        child: IconButton(
                                          icon: Icon(Icons.favorite),
                                          color: isPressed
                                              ? Colors.red
                                              : Colors.black,
                                          onPressed: () {
                                            setState(() {
                                              isPressed = !isPressed;
                                            });
                                          },
                                        ),
                                      )
                                    ]))
                          ],
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
      routes: {"/home": ((context) => Billboard())},
    );
  }
}
