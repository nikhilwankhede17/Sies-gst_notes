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
import 'package:sies_gst_notes/addabsenties.dart';


class Mydashboard extends StatefulWidget {
  const Mydashboard({super.key});

  @override
  State<Mydashboard> createState() => _MydashboardState();
}

class _MydashboardState extends State<Mydashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/hello2.jpg'), fit: BoxFit.cover)
      ),
     // color: Color(0xFF151920),


      child: Column(

          children: [
            SizedBox(
              height:115,
            ),
            Text("Select  Your  Year",style: TextStyle(color: Colors.black54, fontSize: 50,fontWeight: FontWeight.w800,decoration: TextDecoration.none,   fontFamily: 'Teko'),),
            SizedBox(
              height:60,
            ),
        ElevatedButton(
          child: const Text('First Year',style: TextStyle(fontSize: 20)),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Select your Sem'),
                   // content: Text(),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => const Addlecs() )),
                        child: Text('Sem 1'),

                      ),
                      TextButton(
                        onPressed: ()=> Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => const FEsem2())),
                        child: Text('Sem 2'),
                      ),
                    ],
                  );
                },
              );
            },
          style: ElevatedButton.styleFrom(
            fixedSize: Size(350.0, 50.0), // Set the desired width and height
          ),

        ),
            SizedBox(
              height: 45,
            ),

        ElevatedButton(
          child: const Text('Second Year',style: TextStyle(fontSize:20 ),),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Select your Sem'),
                  // content: Text(),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const SEsem1())),
                      child: Text('Sem 3'),

                    ),
                    TextButton(
                      onPressed: ()=> Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const SEsem2())),
                      child: Text('Sem 4'),
                    ),
                  ],
                );
              },
            );
          },
    style: ElevatedButton.styleFrom(
    fixedSize: Size(350.0, 50.0),
        ),
        ),
            SizedBox(
              height: 45,
            ),
        ElevatedButton(
          child: const Text('Third Year ',style: TextStyle(fontSize:20 ),) ,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Select your Sem'),
                  // content: Text(),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const TEsem1())),
                      child: Text('Sem 5'),

                    ),
                    TextButton(
                      onPressed: ()=> Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const TEsem2())),
                      child: Text('Sem 6'),
                    ),
                  ],
                );
              },
            );
          },
    style: ElevatedButton.styleFrom(
    fixedSize: Size(350.0, 50.0),
        ),
        ),
            SizedBox(
              height: 45,
            ),
        ElevatedButton(
          child: const Text('Fourth Year',style: TextStyle(fontSize:20 ),),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Select your Sem'),
                  // content: Text(),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const BEsem1())),
                      child: Text('Sem 7'),

                    ),
                    TextButton(
                      onPressed: ()=> Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const BEsem2())),
                      child: Text('Sem 8'),
                    ),
                  ],
                );
              },
            );
          },
    style: ElevatedButton.styleFrom(
    fixedSize: Size(350.0, 50.0),
    ),
        ),
      ]),
    );
  }
}
