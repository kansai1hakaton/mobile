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
        child: Image.network(
            'https://s3-ap-northeast-1.amazonaws.com/thegate/2020/08/12/14/32/34/tokyotower.jpg'),
      ),
    );
  }
}
