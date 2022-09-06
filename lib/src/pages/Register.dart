import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/src/pages/Home.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final style = TextStyle(fontSize: 14, color: Color(0xFF58968F));
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(children: [createaccount(), buildCheckBox()]),
        ),
      ),
      routes: {"/home": ((context) => homeDesign())},
    );
  }

  Widget buildCheckBox() => Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Checkbox(
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                      ;
                    }),
                Text(
                  "I agree terms of service ...",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(200, 45)),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new homeDesign()));
                },
                child: Text(
                  "REGISTER",
                  style: TextStyle(fontSize: 15),
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 30, right: 30, left: 30),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    width: 1.0,
                    color: Color.fromARGB(
                        163, 197, 195, 195)), // red as border color
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              "Create a business account",
              style: GoogleFonts.roboto(textStyle: style),
            ),
          )
        ],
      );
}

class createaccount extends StatefulWidget {
  const createaccount({Key? key}) : super(key: key);

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(children: [
        Text(
          "CREATE YOUR ACCOUNT",
          style:
              TextStyle(color: Color.fromARGB(255, 88, 55, 129), fontSize: 16),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 30, left: 30),
          child: Column(children: [
            Text(
              "Full Name",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
          child: TextField(
              maxLength: 100,
              decoration: InputDecoration(border: OutlineInputBorder())),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 30),
          child: Column(children: [
            Text(
              "Password",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
          child: TextField(
              maxLength: 100,
              decoration: InputDecoration(border: OutlineInputBorder())),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 30),
          child: Column(children: [
            Text(
              "Email Address",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
          child: TextField(
              maxLength: 100,
              decoration: InputDecoration(border: OutlineInputBorder())),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 30),
          child: Column(children: [
            Text(
              "Phone Number",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
          child: TextField(
              maxLength: 100,
              decoration: InputDecoration(border: OutlineInputBorder())),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 30),
          child: Column(children: [
            Text(
              "Birthdate",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, left: 30, right: 30),
          child: TextField(
              maxLength: 100,
              decoration: InputDecoration(border: OutlineInputBorder())),
        ),
      ]),
    ));
  }
}
