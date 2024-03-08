import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emailInput(),
            passwordInput(),
            loginButton(),
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/signUp'),
                child: const Text("Sign up"))
          ],
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
        }
        return null;
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
        }
        return null;
      },
    );
  }

  ElevatedButton loginButton() {
    return ElevatedButton(
        onPressed: () async {
          if (_key.currentState!.validate()) {
            try {
              await FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                  )
                  .then((_) => Navigator.pushNamed(context, "/"));
            } on FirebaseAuthException catch (e) {
              if (e.code == 'user-not-found') {
                debugPrint('No user found for that email');
              }
              if (e.code == 'wrong-password') {
                debugPrint('Wrong password provided for that user');
              }
            }
          }
        },
        child: Text('Log In'));
  }
}
