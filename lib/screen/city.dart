import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City'),
      ),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            children: [cityInput(), submitButton()],
          ),
        ),
      ),
    );
  }

  TextFormField cityInput() {
    return TextFormField(
      controller: _cityController,
      autofocus: true,
      decoration: const InputDecoration(
        labelText: 'City',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your city';
        } else {
          return null;
        }
      },
    );
  }

  ElevatedButton submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_key.currentState!.validate()) {
          Navigator.pushNamed(context, '/home');
        }
      },
      child: const Text('Submit'),
    );
  }
}
