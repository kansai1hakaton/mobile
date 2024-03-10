import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('City'),
        ),
        body: Column(
          children: [
            Text("Tokyo"),
            Image.network(
                'https://s3-ap-northeast-1.amazonaws.com/thegate/2020/08/12/14/32/34/tokyotower.jpg'),
            TextField(
              decoration: InputDecoration(
                labelText: 'Where do you want to go?',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    // TODO: Implement picker functionality
                  },
                ),
              ),
              onChanged: (value) {
                // TODO: Implement search functionality
              },
            ),
          ],
        ));
  }
}
