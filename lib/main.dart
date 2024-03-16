
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sies_gst_notes/introduction.dart';
import 'firebase_options.dart';
import 'package:sies_gst_notes/login.dart';
import 'package:sies_gst_notes/register.dart';
import 'package:sies_gst_notes/dashboard.dart';

import 'package:sies_gst_notes/FEsem1.dart';
import 'package:sies_gst_notes/FEsem2.dart';
import 'package:sies_gst_notes/SEsem1.dart';
import 'package:sies_gst_notes/SEsem2.dart';
import 'package:sies_gst_notes/TEsem1.dart';
import 'package:sies_gst_notes/TEsem2.dart';
import 'package:sies_gst_notes/Besem1.dart';
import 'package:sies_gst_notes/BEsem2.dart';
import 'package:sies_gst_notes/addlec.dart';
import 'package:sies_gst_notes/addlecCHEM.dart';
import 'package:sies_gst_notes/addlecMATHS.dart';
import 'package:sies_gst_notes/addlecCP.dart';
import 'package:sies_gst_notes/addlecEG.dart';

import 'package:sies_gst_notes/addlecPCCOE.dart';
import 'package:sies_gst_notes/addabsenties.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyDkemw83ua7BkYdCYEzzLv3A5zdDH8yWuM", appId: "1:570983632012:android:257ab1415b64c4beda3fa9", messagingSenderId: "570983632012", projectId: "sies-gst-app")

  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: _checkFirstTimeUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If it's the first time, show the login page
            if (snapshot.data == true) {
              return MyLogin();
            } else {
              // Otherwise, show the dashboard page
              return Introduction();
            }
          } else {
            // Show a loading indicator while checking the first-time user
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Future<bool> _checkFirstTimeUser() async {
    // Check if the user is a first-time user based on your criteria
    // (e.g., checking if there's login data stored in Firebase)
    User? user = _auth.currentUser;

    if (user == null) {
      // If the user is null, consider it as a first-time user
      return true;
    } else {
      // If the user is not null, they have login data
      return false;
    }
  }
}
//       home: FutureBuilder(
//         future: checkFirstTimeUser(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator(); // or a loading indicator
//           } else {
//             if (snapshot.data == true) {
//               return MyLogin();
//             } else {
//               return Mydashboard();
//             }
//           }
//         },
//       ),
//     );
//   }
//
//   Future<bool> checkFirstTimeUser() async {
//     // Check if user is logged in
//     User? user = _auth.currentUser;
//
//     if (user != null) {
//       // User is not first-time user
//       // Perform additional checks if needed, e.g., fetch data from Firebase
//       return false;
//     } else {
//       // User is a first-time user
//       return true;
//     }
//   }
// }
