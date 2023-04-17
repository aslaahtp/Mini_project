import 'package:flutter/material.dart';

import '../common_widgets/app_text.dart';
import '../styles/colors.dart';

class SellerDetails extends StatelessWidget {
  const SellerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(width: 120, height: 120, child: getImageHeader()),
                SizedBox(height: 10),
                AppText(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    text: "Raju Bhai"),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    AppText(
                        color: Color(0xff7C7C7C),
                        fontWeight: FontWeight.bold,
                        text: "About Seller"),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: AppText(
                    text:
                        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("Chat");
                      },
                      child: AppText(text: "Chat"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("Call");
                      },
                      child: AppText(text: "Call"),
                    ),
                  ],
                )
                /*ListTile(
                  leading:
                      SizedBox(width: 65, height: 65, child: getImageHeader()),
                  title: AppText(
                    text: "Rashford",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: AppText(
                    text: "Itz me Rash",
                    color: Color(0xff7C7C7C),
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget getImageHeader() {
  String imagePath = "assets/images/account_image.jpg";
  return CircleAvatar(
    radius: 5.0,
    backgroundImage: AssetImage(imagePath),
    backgroundColor: AppColors.primaryColor.withOpacity(0.7),
  );
}
