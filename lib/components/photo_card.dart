import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PhotoCards extends StatelessWidget {
  final List<String>? imageUrls;

  const PhotoCards({Key? key, required this.imageUrls});

  Widget photoCard(imageUrl) {
    return Card(
      elevation: 5,
      child: Image.network(
        imageUrl,
        fit: BoxFit.fill,
        width: 300,
        height: 250,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> regions = [
      '関東',
      '関西',
      '北海道',
      '信州',
      '四国',
      '中国',
      '東北',
      '九州'
    ];
    return CustomScrollView(
      scrollDirection: Axis.horizontal,
      slivers: [
        // ListView.builder(
        //   itemCount: imageUrls!.length,
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: EdgeInsets.all(15),
        //       child: photoCard(imageUrls![index]),
        //     );
        //   },
        // ),
      ],
    );
  }
}
