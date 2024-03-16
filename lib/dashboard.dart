import 'package:flutter/material.dart';
import 'package:sies_gst_notes/register.dart';
import 'package:sies_gst_notes/FEsem1.dart';
import 'package:sies_gst_notes/FEsem2.dart';
import 'package:sies_gst_notes/SEsem1.dart';
import 'package:sies_gst_notes/SEsem2.dart';
import 'package:sies_gst_notes/TEsem1.dart';
import 'package:sies_gst_notes/TEsem2.dart';
import 'package:sies_gst_notes/Besem1.dart';
import 'package:sies_gst_notes/BEsem2.dart';
import 'package:sies_gst_notes/addlec.dart';
import 'package:sies_gst_notes/attendacesubject.dart';
import 'package:sies_gst_notes/attendacedivision.dart';
import 'package:sies_gst_notes/addabsenties.dart';

//
// class Mydashboard extends StatefulWidget {
//   const Mydashboard({super.key});
//
//   @override
//   State<Mydashboard> createState() => _MydashboardState();
// }
//
// class _MydashboardState extends State<Mydashboard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage('assets/hello2.jpg'), fit: BoxFit.cover)
//       ),
//      // color: Color(0xFF151920),
//
//
//       child: Column(
//
//           children: [
//             SizedBox(
//               height:115,
//             ),
//             Text("Select  Your  Year",style: TextStyle(color: Colors.black54, fontSize: 50,fontWeight: FontWeight.w800,decoration: TextDecoration.none,   fontFamily: 'Teko'),),
//             SizedBox(
//               height:60,
//             ),
//         ElevatedButton(
//           child: const Text('First Year',style: TextStyle(fontSize: 20)),
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return AlertDialog(
//                     title: Text('Select your Sem'),
//                    // content: Text(),
//                     actions: <Widget>[
//                       TextButton(
//                         onPressed: () => Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) => const Addlecs() )),
//                         child: Text('Sem 1'),
//
//                       ),
//                       TextButton(
//                         onPressed: ()=> Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) => const FEsem2())),
//                         child: Text('Sem 2'),
//                       ),
//                     ],
//                   );
//                 },
//               );
//             },
//           style: ElevatedButton.styleFrom(
//             fixedSize: Size(350.0, 50.0), // Set the desired width and height
//           ),
//
//         ),
//             SizedBox(
//               height: 45,
//             ),
//
//         ElevatedButton(
//           child: const Text('Second Year',style: TextStyle(fontSize:20 ),),
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   title: Text('Select your Sem'),
//                   // content: Text(),
//                   actions: <Widget>[
//                     TextButton(
//                       onPressed: () => Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) => const SEsem1())),
//                       child: Text('Sem 3'),
//
//                     ),
//                     TextButton(
//                       onPressed: ()=> Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) => const SEsem2())),
//                       child: Text('Sem 4'),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//     style: ElevatedButton.styleFrom(
//     fixedSize: Size(350.0, 50.0),
//         ),
//         ),
//             SizedBox(
//               height: 45,
//             ),
//         ElevatedButton(
//           child: const Text('Third Year ',style: TextStyle(fontSize:20 ),) ,
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   title: Text('Select your Sem'),
//                   // content: Text(),
//                   actions: <Widget>[
//                     TextButton(
//                       onPressed: () => Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) => const TEsem1())),
//                       child: Text('Sem 5'),
//
//                     ),
//                     TextButton(
//                       onPressed: ()=> Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) => const TEsem2())),
//                       child: Text('Sem 6'),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//     style: ElevatedButton.styleFrom(
//     fixedSize: Size(350.0, 50.0),
//         ),
//         ),
//             SizedBox(
//               height: 45,
//             ),
//         ElevatedButton(
//           child: const Text('Fourth Year',style: TextStyle(fontSize:20 ),),
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   title: Text('Select your Sem'),
//                   // content: Text(),
//                   actions: <Widget>[
//                     TextButton(
//                       onPressed: () => Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) => const BEsem1())),
//                       child: Text('Sem 7'),
//
//                     ),
//                     TextButton(
//                       onPressed: ()=> Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) => const BEsem2())),
//                       child: Text('Sem 8'),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//     style: ElevatedButton.styleFrom(
//     fixedSize: Size(350.0, 50.0),
//     ),
//         ),
//       ElevatedButton(
//       child: const Text('Attendance',style: TextStyle(fontSize:20 ),),
//           onPressed: ()=> Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) => const Attendacedivision())),
//       )
//           ]),
//     );
//   }
// }


class  Mydashboard extends StatelessWidget {
  List<String> cateNames = [
    "First year",
    "Second year",
    "Third year",
    "Fourth year"
  ];
  List<Color> cateColors = [
    Color(0xFF222224),
    Color(0xFF222224),
    Color(0xFF222224),
    Color(0xFF222224),
  ];
  List<Icon> cateIcons = [
    Icon(Icons.picture_as_pdf, color: Color(0xFFc79756), size: 35),
    Icon(Icons.book, color: Color(0xFFc79756), size: 35),
    Icon(Icons.notes, color: Color(0xFFc79756), size: 35),
    Icon(Icons.cast_for_education, color: Color(0xFFc79756), size: 35),
  ];

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding:
              EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: BoxDecoration(
                color: Color(0xFF222224),
                borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(00)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: Icon(
                      Icons.sort,
                      color: Color(0xFFe1d5c9),
                      size: 40,
                    ),
                  ),
                  Text(
                    "Hello Ujjwal",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65),
                    topRight: Radius.circular(65)),
                color: Color(0xFFe1d5c9),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 60, bottom: 30),
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: GridView.builder(
                  itemCount: cateNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (cateNames[index] == "First year") {
                          _showSemesterSelectionDialog1(context);
                        }

                        if (cateNames[index] == "Second year") {
                          _showSemesterSelectionDialog2(context);
                        }
                        if (cateNames[index] == "Third year") {
                          _showSemesterSelectionDialog3(context);
                        }
                        if (cateNames[index] == "Fourth year") {
                          _showSemesterSelectionDialog4(context);
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: cateColors[index],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                              child: cateIcons[index],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            cateNames[index],
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF222224),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFe1d5c9),
        child: ListView(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,


              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),

                  child:  Text(
                    "What's New",
                    style: TextStyle(
                        color: Color(0xFF6c8c90),
                        fontWeight: FontWeight.w900,
                        fontSize: 23,
                        letterSpacing: 2
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ListTile(
                  title: Text(
                    'Blog',
                    style: TextStyle(
                      color: Color(0xFF222224),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: () {
                    // Navigate to blog page or perform desired action
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Attendance',
                    style: TextStyle(
                      color: Color(0xFF222224),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: () {
                    // Navigate to the attendance page or perform desired action
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Attendacedivision()), // Replace AttendancePage with the desired page
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'TML Updates',
                    style: TextStyle(
                      color: Color(0xFF222224),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: () {
                    // Navigate to blog page or perform desired action
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showSemesterSelectionDialog1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select your semester"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("Semester 1"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FEsem1(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Semester 2"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FEsem2() ,
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showSemesterSelectionDialog2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select your semester"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("Semester 3"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SEsem1(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Semester 4"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SEsem2(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showSemesterSelectionDialog3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select your semester"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("Semester 5"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TEsem1(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Semester 6"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TEsem2(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showSemesterSelectionDialog4(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select your semester"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("Semester 7"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BEsem1(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Semester 8"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BEsem2(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void main() {
    runApp(MaterialApp(
      home: Mydashboard(),
    ));
  }
}
