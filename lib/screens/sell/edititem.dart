import 'package:flutter/material.dart';

class Edititem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EDIT ITEM"),
        backgroundColor: Colors.greenAccent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Center(
                  child: Center(
                child: Container(
                  width: 320,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      margin: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
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
