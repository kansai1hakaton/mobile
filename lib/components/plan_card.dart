import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/models/plan.dart';

class PlanCard extends StatelessWidget {
  final String imageLink;
  final double rate;
  final String place;

  const PlanCard({
    required this.imageLink,
    required this.rate,
    required this.place,
  });

  Widget planCard(String imageLink, double rate, String place) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 200,
              height: 100,
              child: ClipRRect(
                child: Image.network(
                  imageLink!,
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              '$place',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            child: Row(
              children: [
                RatingBarIndicator(
                  itemSize: 15,
                  itemCount: 5,
                  rating: rate,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  rate.toString(),
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            padding: EdgeInsets.only(
              left: 85,
            ),
          ),
        ],
      ),
      onTap: () => () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return PageView.builder(
        controller: pageController,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return planCard(imageLink, rate, place);
        });
  }
}
