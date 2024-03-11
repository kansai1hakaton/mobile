import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // final FirebaseFirestore _database;
  // final FirebaseAuth user;

  // _SignUpScreenState(this._database, this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            children: [emailInput(), passwordInput(), submitButton()],
          ),
        ),
      ),
    );
  }

  TextFormField emailInput() {
    return TextFormField(
      controller: _emailController,
      autofocus: true,
      decoration: const InputDecoration(
        labelText: 'Email',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your email';
        } else {
          return null;
        }
      },
    );
  }

  TextFormField passwordInput() {
    return TextFormField(
      controller: _passwordController,
      autofocus: true,
      decoration: const InputDecoration(
        labelText: 'Password',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your password';
        } else {
          return null;
        }
      },
    );
  }

  ElevatedButton submitButton() {
    return ElevatedButton(
        onPressed: () async {
          if (_key.currentState!.validate()) {
            try {
              final UserCredential userCredential =
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: _emailController.text,
                password: _passwordController.text,
              );

              FirebaseFirestore.instance
                  .collection("users")
                  .doc(userCredential.user!.uid)
                  .set(
                {
                  "uid": userCredential.user!.uid,
                  "email": _emailController.text,
                  "password": _passwordController.text,
                },
              );
            } on FirebaseAuthException catch (e) {
              if (e.code == 'weak-password') {
                print('The password provided is too weak');
              } else if (e.code == 'email-already-in-use') {
                print('The account already exists for that email');
              }
            } catch (e) {
              print(e.toString());
            }

            Navigator.pushNamed(context, "/");
          }
        },
        child: Text('Sign Up'));
  }
}
