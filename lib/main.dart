import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/DI/service_locator.dart';
import 'package:mobile/bloc/theme_bloc.dart';
import 'package:mobile/bloc/theme_state.dart';
import 'package:mobile/screen/chatlist.dart';
import 'package:mobile/firebase_options.dart';

import 'package:mobile/screen/home.dart';

import 'package:mobile/screen/profile.dart';
import 'package:mobile/screen/setting_page.dart';
import 'package:mobile/screen/city.dart';

import 'package:mobile/screen/map.dart';

import 'screen/sigup.dart';
import 'screen/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // );
  await initSerivceLocator();
  runApp(
    BlocProvider(
      create: (context) => ThemeBloc(),
      child: const MyApp(),
    ),
  );
  // runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [],
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/signUp': (context) => SignUpScreen(),
          '/logIn': (context) => LogInScreen(),
          '/profile': (context) => ProfileScreen(),
          '/map': (context) => MapScreen(),
          '/setting': (context) => Setting(),
          '/city': (context) => CityScreen(
                place: '山梨',
                imageLink:
                    'https://th.bing.com/th/id/OIP.UdCDZYqR6E7KVMcev9ldYgHaE8?w=269&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
              ),
          '/chat': (context) => HomeScreen(),
          // '/chat': (context) => ChatScreen(),
        },
      );
    });
    return MaterialApp(
        title: '',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [],
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/signUp': (context) => SignUpScreen(),
          '/logIn': (context) => LogInScreen(),
          '/profile': (context) => ProfileScreen(),
          '/map': (context) => MapScreen(),
          '/setting': (context) => Setting(),
          '/city': (context) => CityScreen(
                place: '',
                imageLink: '',
              ),
          '/chat': (context) => HomeScreen(),
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
