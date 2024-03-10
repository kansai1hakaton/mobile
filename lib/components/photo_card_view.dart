import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoCards extends HookWidget {
  // final List<String>? imageUrls;

  // const PhotoCards({Key? key, required this.imageUrls});

  Widget photoCard(imageUrl, place) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: SizedBox(
          height: 250,
          width: 300,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.network(imageUrl),
              ),
              Positioned(
                child: Text(
                  place,
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
                bottom: 0,
                top: 200,
                left: 20,
                right: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<Map<String, String>> imageUrls = [
    {
      'url':
          'https://th.bing.com/th/id/OIP.BwL9KIEzwBaJ3tunhSr4FQHaE6?w=273&h=181&c=7&r=0&o=5&dpr=2&pid=1.7',
      'place': '青森'
    },
    {
      'url':
          'https://th.bing.com/th/id/OIP.-0HmvA-Y7SqKxm54RI9ryQHaE8?w=268&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
      'place': '広島',
    },
    {
      'url':
          'https://th.bing.com/th/id/OIP.FFaFbOhsMLevjqSnj5mwGQHaE8?w=282&h=188&c=7&r=0&o=5&dpr=2&pid=1.7s',
      'place': '三重',
    },
    {
      'url':
          'https://th.bing.com/th/id/OIP.UdCDZYqR6E7KVMcev9ldYgHaE8?w=269&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
      'place': '山梨'
    }
  ];

  final PageController pageController = PageController(initialPage: 999);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Timer.periodic(
        const Duration(seconds: 2),
        (Timer timer) {
          pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
      );
    });

    return SizedBox(
      height: 300,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return photoCard(
            imageUrls[index % imageUrls.length]['url'],
            imageUrls[index % imageUrls.length]['place'],
          );
        },
      ),
    );
  }
}
