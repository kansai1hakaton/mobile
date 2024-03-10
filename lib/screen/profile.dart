import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile/screen/login.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String uid = FirebaseAuth.instance.currentUser!.uid;

  getUserInfo() async {
    var result = await FirebaseFirestore.instance.collection('a').get();

    print(result);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: FutureBuilder(
          future: getUserInfo(),
          builder: (context, snapshot) {
            return Scaffold(
              body: Center(
                child: Text((snapshot.data as QuerySnapshot).docs[0]['email']),
              ),
            );
            // return snapshot.hasData
            // ? Column(
            //     children: [
            //       Text((snapshot.data as Map)['email']),
            //       ElevatedButton(
            //         onPressed: () =>
            //             Navigator.pushNamed(context, "/profileEdit"),
            //         child: Text('Edit Profile'),
            //       ),
            //       ElevatedButton(
            //         onPressed: () =>
            //             Navigator.pushNamed(context, "/profile"),
            //         child: Text("profile"),
            //       )
            //     ],
            //   )
            // : Center(child: CircularProgressIndicator());
          }),
    );
  }
}
