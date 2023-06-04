import 'package:flutter/material.dart';
import 'package:grocery_app/screens/dashboard/dashboard_screen.dart';
import './signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../home/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // First half of the screen with color 1
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height / 2,
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    "RURAL REACH",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // Second half of the screen with color 2
            Positioned(
              top: MediaQuery.of(context).size.height / 2,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height / 2,
              child: Container(
                color: Colors.white,
              ),
            ),
            // Centered card
            Positioned(
              top: MediaQuery.of(context).size.height / 3.2,
              left: MediaQuery.of(context).size.width / 6,
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 1.7,
                  padding: EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text("EMAIL",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.green))),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text("PASSWORD",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.green))),
                          ],
                        ),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                print("Forgot Password");
                              },
                              child: Text(
                                "Forgot Password ? ",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              try {
                                final user =
                                    await _auth.signInWithEmailAndPassword(
                                        email: email, password: password);
                                if (user != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DashboardScreen()));
                                }
                              } catch (e) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Error'),
                                      content: Text(e.toString()),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(fontSize: 20),
                            )),
                        SizedBox(
                          height: 15, //15
                        ),
                        Row(
                          children: [
                            Expanded(child: Text("Don't have an Account ?")),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  print("Google auth");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()),
                                  );
                                },
                                child: Text(
                                  "SignUp ",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text("     OR LOGIN USING"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DashboardScreen()),
                                );
                              },
                              child: Text(
                                'GOOGLE',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
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
