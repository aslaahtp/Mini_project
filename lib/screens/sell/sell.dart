import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'sellcard.dart';

class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  final _firestore = FirebaseFirestore.instance;

  @override
  // void getData() async {
  //   final data = await _firestore.collection('addproduct').get();
  //   for (var document in data.docs) {
  //     print(document.data());
  //   }
  // }

  void getDataStream() async {
    await for (var snapshot
        in _firestore.collection('addproduct').snapshots()) {
      for (var message in snapshot.docs) {
        print(message.data());
      }
    }
  }

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
                  StreamBuilder<QuerySnapshot>(
                    stream: _firestore.collection('addproduct').snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasData) {
                        final messages = snapshot.data!.docs;
                        List<Sellcard> SellPageWidgets = [];
                        for (var message in messages) {
                          final data = message.data() as Map<String, dynamic>;
                          final itemText = data['Item'];
                          final itemQty = data['Quantity'];
                          final itemPrice = data['Price'];
                          final itemMinBuy = data['Minbuy'];
                          final SellPageWidget = Sellcard(name: itemText);
                          SellPageWidgets.add(Sellcard(name: itemText));
                        }
                        return Column(
                          children: SellPageWidgets,
                        );
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                  AddProduct(),
                  ElevatedButton(onPressed: getDataStream, child: Text('Test'))
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
