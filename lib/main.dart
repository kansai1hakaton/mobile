import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'sing_up.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  var nico = Player(name: "d");
  runApp(const ProviderScope(child: MyApp()));
}

class Player {
  String name;

  Player({required this.name});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [],
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "hey",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("da")
                      ],
                    )
                  ],
                )
              ],
            )));
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("hello"),
    //   ),
    //   body: Center(
    //     child: ElevatedButton(
    //       onPressed: () {
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => SignInPage()),
    //         );
    //       },
    //       child: Text('Go to Sign In Page'),
    //     ),
    //   ),
    // );
  }
}
