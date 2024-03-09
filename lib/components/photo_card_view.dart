import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoCards extends StatelessWidget {
  // final List<String>? imageUrls;

  // const PhotoCards({Key? key, required this.imageUrls});

  Widget photoCard(imageUrl, place) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              child: Text(
                place,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
              bottom: 0,
              top: 150,
              left: 20,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 999);
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
            'https://th.bing.com/th/id/OIP.bSJPgVs7_1GXzyZLaIbWsAHaE8?w=364&h=198&c=7&r=0&o=5&dpr=2&pid=1.7',
        'place': '三重',
      },
      {
        'url':
            'https://th.bing.com/th/id/OIP.UdCDZYqR6E7KVMcev9ldYgHaE8?w=269&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
        'place': '山梨'
      }
    ];
    return PageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return photoCard(
          imageUrls[index % imageUrls.length]['url'],
          imageUrls[index % imageUrls.length]['place'],
        );
      },
    );
  }
}
