import 'package:flutter/material.dart';
import 'package:grocery_app/screens/sell/sellcard.dart';
import 'package:grocery_app/screens/sell/sell.dart';
//import 'package:image_picker/image_picker.dart';

class Newitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD NEW PRODUCT"),
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                "ADD PRODUCT",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                  child: Center(
                child: Container(
                  width: 350,
                  height: 380,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 25,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                    child: Center(
                                  child: Text(
                                    "Item ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                                Expanded(
                                  child: Container(),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Line(word: "Quantity"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Line(word: "Price"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Line(word: "Min. Buy"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: GetFile(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddProduct()),
                  );*/
                  print("Confirm Button Pressed");
                  // Button action
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.greenAccent),
                  minimumSize: MaterialStateProperty.all<Size>(
                      Size(150, 50)), // Adjust the size here
                ),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Line extends StatelessWidget {
  final String word;
  Line({required this.word});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Center(
          child: Text(
            word,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )),
        Expanded(child: Container()),
        Expanded(
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GetFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          "  Image ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              print("get Image");
            },
            style: ButtonStyle(),
            child: Text('Get Image',
                style: TextStyle(fontSize: 10, color: Colors.greenAccent)),
          ),
        ),
      ],
    );
  }
}
