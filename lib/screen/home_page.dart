import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile/components/bottom_nav.dart';
import 'package:mobile/screen/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext con, AsyncSnapshot<User?> user) {
          if (!user.hasData) {
            return LogInScreen();
          } else {
            return Scaffold(
              appBar: AppBar(
                title: Text('Home'),
              ),
              bottomNavigationBar: BottomNav(),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome ${user.data!.email}'),
                    Text("You are now logged in"),
                    ElevatedButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut().then(
                            (_) => Navigator.pushNamed(context, "/logIn"));
                      },
                      child: Text('Log Out'),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, "/profile"),
                      child: Text("profile"),
                    ),
                    ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/setting'),
                        child: Text("setting")),
                    ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/chat'),
                        child: Text("chat")),
                  ],
                ),
              ),
            );
          }
        });
  }
}
