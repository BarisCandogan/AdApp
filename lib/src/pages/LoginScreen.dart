import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/src/pages/Register.dart';

class position extends StatefulWidget {
  const position({Key? key}) : super(key: key);

  @override
  State<position> createState() => _positionState();
}

class _positionState extends State<position> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.134,
      color: Color.fromRGBO(0, 0, 0, 0),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [position(), LoginScreen()],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/door.png"))),
          alignment: Alignment.center,
        ),
      ),
      routes: {"/location": ((context) => register())},
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _homePageState();
}

class _homePageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 470,
        padding: EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 0),
        color: Color.fromARGB(255, 213, 198, 155),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 15),
              child: Column(children: [
                Image(
                  image: AssetImage("assets/Vector.png"),
                  height: 50,
                ),
              ]),
            ),
            Text(
              "Log In",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 50, 14, 95),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 22.0,
            ),
            Container(
              width: 220.0,
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none)),
                      hintText: "Email",
                      fillColor: Colors.black12,
                      filled: true)),
            ),
            SizedBox(
              height: 22.0,
            ),
            Container(
              width: 220.0,
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none)),
                      hintText: "Password",
                      fillColor: Colors.black12,
                      filled: true)),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 0),
              child: Text(
                "Forgot your password ?",
                style: TextStyle(
                    color: Color.fromARGB(255, 101, 158, 135), fontSize: 12),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 18),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 30)),
                  onPressed: () {},
                  child: Text(
                    "LOG IN",
                    style: TextStyle(fontSize: 15),
                  ),
                )),
            Container(
              width: 220,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                    Container(
                      child: TextButton(
                        style: TextButton.styleFrom(minimumSize: Size(20, 0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/location");
                        },
                        child: Text(
                          "Create an account.",
                          style: TextStyle(
                              color: Color.fromARGB(255, 101, 158, 135),
                              fontSize: 10),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
