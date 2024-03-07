import 'package:flutter/material.dart';
import 'package:sies_gst_notes/dashboard.dart';
import 'package:sies_gst_notes/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/theme3.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:50, top:90),
              child: Text(
                '    Create  Account',
                style: TextStyle(color: Colors.white, fontSize: 50,   fontFamily: 'Teko',),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Name",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.black
                            ),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       'Sign Up',
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 27,
                          //           fontWeight: FontWeight.w700),
                          //     ),
                          //     CircleAvatar(
                          //       radius: 30,
                          //       backgroundColor: Color(0xff4c505b),
                          //       child: IconButton(
                          //           color: Colors.white,
                          //           onPressed: () {},
                          //           icon: Icon(
                          //             Icons.arrow_forward,
                          //           )),
                          //     )
                          //   ],
                          // ),
                          SizedBox(
                            height: 10,
                          ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, 'login');
//                                 },
//                                 child: Text(
//                                   'Sign In',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Colors.white,
//                                       fontSize: 18),
//                                 ),
//                                 style: ButtonStyle(),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
                          Column(

                              children:[
                                ElevatedButton(
                                  child: const Text('Sign up',style: TextStyle(color: Colors.white),),
                                  onPressed: ()  => Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => const MyLogin())),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    fixedSize: Size(350.0, 50.0), // Set the desired width and height
                                  ),

                                ),
                                SizedBox(
                                  height: 20,
                                ),



                                Text ('OR',style: TextStyle(color: Colors.white),),
                                SizedBox(
                                  height: 20,
                                ),


                                ElevatedButton(
                                  child: const Text('Sign in',style: TextStyle(color: Colors.white),),
                                  onPressed: ()  => Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) => const MyLogin())),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    fixedSize: Size(300.0, 50.0), // Set the desired width and height
                                  ),

                                ),

                              ]
                          )








                        ],  )

                    ),
                    //   ),
                  ],  ),

              ),
            ),
            //),

          ]
        )
      )
    );







  }
}