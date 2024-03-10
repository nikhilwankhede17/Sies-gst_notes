import 'package:flutter/material.dart';
import 'package:sies_gst_notes/dashboard.dart';
import 'package:sies_gst_notes/register.dart';
import 'package:sies_gst_notes/addlec.dart';
import 'package:sies_gst_notes/addabsenties.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(email == "" || password == "") {
      log("Please fill all the fields!");
    }
    else {

      try {
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
        if(userCredential.user != null) {

        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Mydashboard(),
            ),
          );

        }
      } on FirebaseAuthException catch(ex) {
        log(ex.code.toString());
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/theme3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 95, top: 120),
                child: Text(
                  'SIES GST\n  NOTES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  fontFamily: 'Teko',
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextField(
                              controller: emailController,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            TextField(
                              controller: passwordController,
                              style: TextStyle(),
                              obscureText: true,
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Column(
                              children: [
                                ElevatedButton(
                                  child: const Text(
                                    'Sign in',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    login();

                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,

                                    fixedSize: Size(350.0, 50.0),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'OR',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  child: const Text(
                                    'Create a new account',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => MyRegister(),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    fixedSize: Size(300.0, 50.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
