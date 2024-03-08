import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/firebase_options.dart';
// import 'package:firebase_core/firebase_core.dart';

import 'screen/sigup.dart';
import 'screen/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [],
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/signUp': (context) => SignUpScreen(),
          '/logIn': (context) => LogInScreen(),
        });
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LogInScreen()),
            );
          },
          child: Text('Go to Sign In Page'),
        ),
      ),
    );
  }
}

    // return MaterialApp(
    //     home: Scaffold(
    // backgroundColor: Colors.black,
    // body: Column(
    //   children: [
    //     SizedBox(
    //       height: 100,
    //     ),
    //     Row(
    //       children: [
    //         Column(
    //           children: [
    //             Text(
    //               "hey",
    //               style: TextStyle(color: Colors.white),
    //             ),
    //             Text("da")
    //           ],
    //         )
    //       ],
    //     )
    //   ],
    // )));