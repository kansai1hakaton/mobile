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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance
                    .signOut()
                    .then((_) => Navigator.pushNamed(context, "/logIn"));
              },
              child: Text('Log Out'),
            ),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance
                    .signOut()
                    .then((_) => Navigator.pushNamed(context, "/profile"));
              },
              child: Text('Profile'),
            )
          ],
        ),
      ),
    );
  }
}
