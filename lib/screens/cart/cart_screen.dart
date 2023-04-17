import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: Text(
            "This is Cart Screen",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
