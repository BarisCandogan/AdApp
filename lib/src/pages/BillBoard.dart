import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Billboard extends StatelessWidget {
  const Billboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Row(
        children: [
          Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/↳ 🖼 Image.png"),
            width: MediaQuery.of(context).size.width * 0.30,
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "data",
              ),
              Text("data")
            ]),
          )
        ],
      ),
    ));
  }
}
