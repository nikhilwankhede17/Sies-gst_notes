import 'package:flutter/material.dart';
import 'package:sies_gst_notes/addabsenties.dart';
import 'package:sies_gst_notes/addlec.dart';
import 'package:sies_gst_notes/addlecCHEM.dart';
import 'package:sies_gst_notes/addlecCP.dart';
import 'package:sies_gst_notes/addlecEG.dart';
import 'package:sies_gst_notes/addlecMATHS.dart';
import 'package:sies_gst_notes/addlecPCCOE.dart';
import 'package:sies_gst_notes/register.dart';
import 'package:url_launcher/url_launcher.dart';

class Attendacesubject extends StatefulWidget {
  const Attendacesubject({super.key});

  @override
  State<Attendacesubject> createState() => _AttendacesubjectState();
}

class _AttendacesubjectState extends State<Attendacesubject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/hello2.jpg'), fit: BoxFit.cover)
      ),



      child: Column(

          children: [
            SizedBox(
              height: 125,
            ),
            Text("Select G Division  Subject",style: TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.w700,decoration: TextDecoration.none, fontFamily: 'Teko')),

            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Engineering Physics 2',style: TextStyle(fontFamily: 'Teko', fontSize: 22),),
              onPressed: () async {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const  Addlecs() ),);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350.0, 50.0), // Set the desired width and height
              ),

            ),
            SizedBox(
              height: 30,
            ),

            ElevatedButton(
              child: const Text('Engineering Chemistry 2',style: TextStyle(fontFamily: 'Teko', fontSize: 22),),
              onPressed: () async {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const  AddlecsCHEM() ),);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350.0, 50.0), // Set the desired width and height
              ),



            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('Engineering Mathematics 2 ',style: TextStyle(fontFamily: 'Teko', fontSize: 22),),
              onPressed: () async {

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const  addlecMATHS() ),);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350.0, 50.0), // Set the desired width and height
              ),

            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('C Programming',style: TextStyle(fontFamily: 'Teko', fontSize: 22),),
              onPressed: () async {

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const  AddlecsCP() ),);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350.0, 50.0), // Set the desired width and height
              ),

            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('Enginering Graphics',style: TextStyle(fontFamily: 'Teko', fontSize: 22),),
              onPressed: () async {

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const  AddlecsEG() ),);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350.0, 50.0), // Set the desired width and height
              ),


            ),
            SizedBox(
              height: 30,
            ),
      ElevatedButton(
          child: const Text('Proffesional Communication and Ethics',style: TextStyle(fontFamily: 'Teko', fontSize: 22),),
          onPressed: () async {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const  AddlecsPCCOE() ),);
          },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(350.0, 50.0), // Set the desired width and height
        ),

      ) ]),
    );
  }
}
