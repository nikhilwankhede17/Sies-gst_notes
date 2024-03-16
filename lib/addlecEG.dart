import 'package:flutter/material.dart';
import 'package:sies_gst_notes/addabsenties.dart';
import 'package:sies_gst_notes/register.dart';
import 'package:sies_gst_notes/FEsem1.dart';
import 'package:sies_gst_notes/FEsem2.dart';
import 'package:sies_gst_notes/SEsem1.dart';
import 'package:sies_gst_notes/SEsem2.dart';
import 'package:sies_gst_notes/TEsem1.dart';
import 'package:sies_gst_notes/TEsem2.dart';
import 'package:sies_gst_notes/Besem1.dart';
import 'package:sies_gst_notes/BEsem2.dart';
import 'package:sies_gst_notes/AllStudentsListScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddlecsEG extends StatefulWidget {
  const AddlecsEG({Key? key}) : super(key: key);

  @override
  _AddlecsEGState createState() => _AddlecsEGState();
}

// Assuming total_lectures is an integer variable
class _AddlecsEGState extends State<AddlecsEG> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late Future<int> lecturesFuture;

  @override
  void initState() {
    super.initState();
    // Start fetching lectures as soon as the widget is initialized
    lecturesFuture = getLectures();
  }

  Future<int> getLectures() async {
    try {
      // Replace 'your_collection' with the name of your Firestore collection
      DocumentSnapshot snapshot = await _firestore
          .collection('myVariable')
          .doc('GdivEG')
          .get();

      // Replace 'your_field' with the name of the field containing the integer value
      int total_lectures = snapshot.get('total_lectures');
      return total_lectures;
    } catch (e) {
      print('Error retrieving value from Firebase: $e');
      return 0; // Handle the error as needed
    }
  }

  Future<void> lecUpdate() async {
    try {
      // Replace 'your_collection' and 'DjBr8bZnBXmH2Fd2OOfN' with your actual values
      await _firestore
          .collection('myVariable')
          .doc('GdivEG')
          .update({'total_lectures': FieldValue.increment(1)});
    } catch (e) {
      print('Error updating value in Firebase: $e');
      // Handle the error as needed
    }
  }
  Future<void> updatepresent() async {
    try {
      // Replace 'your_collection' with the name of your Firestore collection
      QuerySnapshot querySnapshot = await _firestore.collection('studentslist').get();

      for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {
        // Update the total_lectures field for each document
        await documentSnapshot.reference.update({'presentEG': FieldValue.increment(1)});
      }
    } catch (e) {
      print('Error updating values in Firebase: $e');
      // Handle the error as needed
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<int>(
        future: lecturesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Show loading indicator while fetching data
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // Data fetched successfully, build the UI
            int totalLectures = snapshot.data!;

            return buildMainUI(totalLectures);
          }
        },
      ),
    );
  }

  Widget buildMainUI(int totalLectures) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/hello2.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Total Lectures: $totalLectures',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () async {
              // Increment the total_lectures variable when the button is pressed
              await lecUpdate();
              await updatepresent();
            },
            child: Text('Increment Lectures'),
          ),
          SizedBox(height: 40),
          ElevatedButton(

            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>  AddabScreen())),



            child: Text('Add Absenties'),
          ),
          SizedBox(height: 40),
          ElevatedButton(

            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => StudentScreen() )),



            child: Text('View All Students Attendace'),
          ),
        ],
      ),
    );
  }
}