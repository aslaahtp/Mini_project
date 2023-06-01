import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account/account_screen.dart';
import 'package:grocery_app/screens/cart/cart_screen.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import '../sell/sell.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Buy", "assets/icons/buy24.svg", 0, HomeScreen()),
  NavigatorItem("Sell", "assets/icons/sell24.svg", 1, Sell()),
  NavigatorItem("Cart", "assets/icons/cart24.svg", 2, CartScreen()),
  NavigatorItem("Account", "assets/icons/profile24.svg", 3, AccountScreen()),
];
