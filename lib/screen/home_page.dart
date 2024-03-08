import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut().then(
                            (_) => Navigator.pushNamed(context, "/profile"));
                      },
                      child: Text('Profile'),
                    )
                  ],
                ),
              ),
            );
          }
        });
  }
}
