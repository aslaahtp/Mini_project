import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'sellcard.dart';

class Sell extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  /*ListTile(
                    leading: SizedBox(
                        width: 65, height: 65, child: getImageHeader()),
                    title: AppText(
                        text: "Rashford",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),*/
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: Divider(
                    thickness: 1,
                    color: Colors.greenAccent,
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "SELL YOUR PRODUCTS",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Sellcard(name: "Tomato"),
                  Sellcard(name: "Pea"),
                  Sellcard(name: "Cucumber"),
                  Sellcard(name: "Papaya"),
                  Sellcard(name: "PINEAPPLE"),
                  AddProduct(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget getImageHeader() {
  String imagePath = "assets/images/Rash.jpg";
  return CircleAvatar(
    radius: 5.0,
    backgroundImage: AssetImage(imagePath),
  );
}
