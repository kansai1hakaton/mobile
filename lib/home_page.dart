import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile/components/appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/components/drop_down_menu.dart';
import 'package:mobile/components/photo_card_view.dart';

class HomePage extends HookWidget {
  final String? imageLink;

  const HomePage({
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        backButton: false,
        title: 'appname',
        imageLink: null,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'ここに行ってみない？',
                style: GoogleFonts.montserrat(fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                height: 250,
                width: 350,
                child: PhotoCards(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: CustomDropMenu(),
            ),
          ),
        ],
      ),
    );
  }
}
