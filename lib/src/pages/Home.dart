import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/Icons/icons.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class homeDesign extends StatefulWidget {
  const homeDesign({Key? key}) : super(key: key);

  @override
  State<homeDesign> createState() => _homeDesignState();
}

class _homeDesignState extends State<homeDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 45,
        ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.07,
                  color: Color(0xff6101EE),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 190, 190, 190),
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.070,
                        width: 270,
                        margin: EdgeInsets.only(top: 25, left: 25),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(33, 33, 33, 0.08),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              margin: EdgeInsets.only(right: 200),
                              child: Text(
                                "Filtre",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.38)),
                              ),
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.035,
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
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.38))),
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
                            image: AssetImage("assets/↳ 🖼 Image.png"),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.055,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
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
                            image: AssetImage("assets/↳ 🖼 Image.png"),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.055,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.1635,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.08,
                  color: Color(0xff6101EE),
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width * 0.33,
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Colors.black26))),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                color: Colors.white,
                                bazaarSvg,
                              ),
                              Text(
                                "Bazaar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width * 0.33,
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Colors.black26))),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                color: Colors.white,
                                vectorSvg,
                              ),
                              Text(
                                "Billboard",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width * 0.33,
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                color: Colors.white,
                                userSvg,
                              ),
                              Text(
                                "User Page",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
