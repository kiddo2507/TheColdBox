import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thecold_box/screens/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thecold_box/src/myapp.dart';

import 'home_screen.dart';

class ProfilePage extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore;
  // User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              //icon
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                  height: 140, child: Lottie.asset('assets/profile.json')),
            ),
            Padding(
              //name of the page
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                'User profile',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 60),
                      elevation: 2,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Kiddo',
                      style: TextStyle(fontSize: 17),
                    )
                    // child: StreamBuilder(
                    //   stream: firestore.instance.collection('users').snapshots(),
                    //   builder: (BuildContext context,
                    //       AsyncSnapshot<QuerySnapshot> snapshot) {
                    //     if (!snapshot.hasData) {
                    //       return Text('No Value');
                    //     }
                    //     return ListView(
                    //       children: [
                    //         snapshot.data!.map((document) {
                    //           return Text(document['firstName']);
                    //         }).toList(),
                    //       ],
                    //     );
                    //   },
                    // ),
                    ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 60),
                      elevation: 2,
                    ),
                    onPressed: () {},
                    child: Text(
                      "priyayelisetty25@gmail.com",
                      style: TextStyle(fontSize: 17),
                    )),
                const SizedBox(
                  height: 200,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(175, 50),
                      elevation: 2,
                    ),
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.remove('email');
                      _signOut(context);
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(fontSize: 17),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _signOut(BuildContext context) async {
    await auth.signOut().then((_) {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new LoginScreenNew()));
    });
  }
}
