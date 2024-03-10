import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: SizedBox(
          height: 150,
          width: 175,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 175,
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
                  left: 70,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () => () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(7),
              child: planCard(imageLink, rate, place),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: planCard(imageLink, rate, place),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(7),
              child: planCard(imageLink, rate, place),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: planCard(imageLink, rate, place),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(7),
              child: planCard(imageLink, rate, place),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: planCard(imageLink, rate, place),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(7),
              child: planCard(imageLink, rate, place),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: planCard(imageLink, rate, place),
            ),
          ],
        ),
      ],
    );
  }
}
