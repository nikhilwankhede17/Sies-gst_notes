import 'package:flutter/material.dart';
import 'package:sies_gst_notes/dashboard.dart';
import 'package:sies_gst_notes/register.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    // Replace this with your authentication logic
    String email = _emailController.text;
    String password = _passwordController.text;

    // Example: Hardcoded credentials for demonstration purposes
    String correctEmail = 'Hello';
    String correctPassword = 'psd';

    if (email == correctEmail && password == correctPassword) {
      // Navigate to dashboard if credentials are correct
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Mydashboard()),
      );
    } else {
      // Show error message if credentials are incorrect
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Incorrect email or password. Please try again.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
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
                              controller: _emailController,
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
                              controller: _passwordController,
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
                                  onPressed: () => _login(context),
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
