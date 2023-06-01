import 'package:flutter/material.dart';
import 'package:grocery_app/screens/sell/newitem.dart';
import 'edititem.dart';

class Sellcard extends StatelessWidget {
  final String name;
  Sellcard({required this.name});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Edititem()),
                        );
                      },
                      child: Text(
                        "EDIT",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class AddProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "ADD PRODUCT",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(
                  child: Center(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Newitem()),
                            );
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.greenAccent,
                          ))),
                ),
              ),
            ],
          ),
        ));
  }
}
