import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _auth = FirebaseAuth.instance;
  late String name;
  late String email;
  late String password;
  late String phnumber;
  late String address;
  late String confirmpassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Colors.greenAccent,
          ),
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://thumbs.dreamstime.com/b/businessman-icon-vector-male-avatar-profile-image-profile-businessman-icon-vector-male-avatar-profile-image-182095609.jpg"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.18,
                      height: MediaQuery.of(context).size.height / 1.35,
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Center(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "SIGNUP",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Text("Name",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green))),
                              ],
                            ),
                            TextField(
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                name = value;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Text("Email",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green))),
                              ],
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                                email = value;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Text("Phone Number",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green))),
                              ],
                            ),
                            TextField(
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                phnumber = value;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Text("Address",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green))),
                              ],
                            ),
                            TextField(
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                address = value;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Text("Enter Password",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green))),
                              ],
                            ),
                            TextField(
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                password = value;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Text("Confirm Password",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green))),
                              ],
                            ),
                            TextField(
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                confirmpassword = value;
                              },
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  print("SIGNUP ");
                                  try {
                                    final newUser = await _auth
                                        .createUserWithEmailAndPassword(
                                            email: email, password: password);
                                    if (newUser != null) {
                                      Navigator.pop(context);
                                    }
                                  } catch (e) {
                                    print(e);
                                  }
                                  // print(name);
                                  // print(email);
                                  // print(password);
                                  // print(phnumber);
                                  // print(address);
                                  // print(confirmpassword);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green),
                                child: Text(
                                  "SUBMIT",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ],
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
