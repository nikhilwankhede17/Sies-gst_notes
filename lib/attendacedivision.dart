import 'package:flutter/material.dart';
import 'package:sies_gst_notes/attendacesubject.dart';
import 'package:sies_gst_notes/register.dart';
import 'package:url_launcher/url_launcher.dart';

class Attendacedivision extends StatefulWidget {
  const Attendacedivision({super.key});

  @override
  State<Attendacedivision> createState() => _AttendacedivisionState();
}

class _AttendacedivisionState extends State<Attendacedivision> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select Division'),
        ),
        body:Container(
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/hello2.jpg'), fit: BoxFit.cover)
    ),
    // color: Color(0xFF151920),


    child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildButtonRow(),
            buildButtonRow2(),
            buildButtonRow3(),
            buildButtonRow4(),
          ],
        ),
      ),
      ));
  }

  Widget buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildRoundedButton('A'),
        buildRoundedButton('B'),
      ],
    );
  }
  Widget buildButtonRow2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildRoundedButton('C'),
        buildRoundedButton('D'),
      ],
    );
  }
  Widget buildButtonRow3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildRoundedButton('E'),
        buildRoundedButton('F'),
      ],
    );
  }
  Widget buildButtonRow4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildRoundedButton('G'),
        buildRoundedButton('H'),
      ],
    );

  }

  Widget buildRoundedButton(String buttonText) {
    return ElevatedButton(
      onPressed: ()  => Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Attendacesubject() )),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
     }
  Widget buildRoundedButton2(String buttonText) {
    return ElevatedButton(
      onPressed: ()  => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Attendacesubject() )),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
  }
  Widget buildRoundedButton3(String buttonText) {
    return ElevatedButton(
      onPressed: ()  => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Attendacesubject() )),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
  }
  Widget buildRoundedButton4(String buttonText) {
    return ElevatedButton(
      onPressed: ()  => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Attendacesubject() )),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
  }
  Widget buildRoundedButton5(String buttonText) {
    return ElevatedButton(
      onPressed: ()  => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Attendacesubject() )),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
  }
  Widget buildRoundedButton6(String buttonText) {
    return ElevatedButton(
      onPressed: ()  => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Attendacesubject() )),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
  }
  Widget buildRoundedButton7(String buttonText) {
    return ElevatedButton(
      onPressed: ()  => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Attendacesubject() )),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
  }
  Widget buildRoundedButton8(String buttonText) {
    return ElevatedButton(
      onPressed: ()  => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Attendacesubject() )),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
  }
}