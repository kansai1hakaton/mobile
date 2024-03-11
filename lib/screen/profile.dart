import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/screen/login.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String uid = FirebaseAuth.instance.currentUser!.uid;

  getUserInfo() async {
    var result = await FirebaseFirestore.instance.collection('a').get();
    print(result);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      floatingActionButton: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Adjust the alignment as needed
          children: [
            SizedBox(width: 15),
            SizedBox(
              width: 200, // Adjust the width as needed
              child: FloatingActionButton(
                onPressed: () {
                  // Action to perform when the button is pressed
                },
                child: Text('DM'),
              ),
            ),
            SizedBox(
              width: 200, // Adjust the width as needed
              child: FloatingActionButton(
                onPressed: () {
                  // Action to perform when the button is pressed
                },
                child: Text(
                  '予約する',
                ),
              ),
            ),
          ]),
      body: FutureBuilder(
          future: getUserInfo(),
          builder: (context, snapshot) {
            return Scaffold(
              body: Center(
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Center(
                        child: Image.network(
                            'https://366e203a.rocketcdn.me/wp-content/uploads/2021/03/wealthy-photographer.jpg') // アイコンを配置
                        ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      ),
                      Icon(Icons.email), // メールアイコン
                      SizedBox(width: 10), // アイコンとテキストの間隔
                      Text(
                        (snapshot.data as QuerySnapshot).docs[0]['email'],
                        style: GoogleFonts.ubuntu(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      ),
                      Icon(Icons.person), // 人物アイコン
                      SizedBox(width: 10), // アイコンとテキストの間隔
                      Text(
                        (snapshot.data as QuerySnapshot).docs[0]['name'],
                        style: GoogleFonts.ubuntu(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      ),
                      Icon(Icons.person_outline), // ニックネームアイコン
                      SizedBox(width: 10), // アイコンとテキストの間隔
                      Text(
                        (snapshot.data as QuerySnapshot).docs[0]['nickname'],
                        style: GoogleFonts.ubuntu(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     ElevatedButton(
                  //       onPressed: () {
                  //         // ボタンが押された時の処理
                  //       },
                  //       style: ElevatedButton.styleFrom(
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10), // 角の丸みを調整
                  //         ),
                  //       ),
                  //       child: Text('DM'),
                  //     ),
                  //     ElevatedButton(
                  //       onPressed: () {
                  //         // ボタンが押された時の処理
                  //       },
                  //       style: ElevatedButton.styleFrom(
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10), // 角の丸みを調整
                  //         ),
                  //       ),
                  //       child: Text('予約'),
                  //     )
                  //   ],
                  // ),
                ]),
              ),
            );
          }),
    );
  }
}
