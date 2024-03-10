import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/components/appbar.dart';
////
// void main() {
//   Setting();
// }

void main() {
  runApp(Setting());
}


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'setting',
        backButton: false,
        imageLink: null,
        ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              settingButton(context,'一般'),
              settingButton(context,'プライバシー'),
              settingButton(context,'利用規約'),
              settingButton(context,'支払い方法'),
              settingButton(context,'ログアウト'),
            ],
          ),
        ),
        // bottomNavigationBar:BottomNavigationBar(
        //   items:const[
        //     BottomNavigationBarItem(
        //       icon:Icon(Icons.settings),
        //       label:'設定',
        //     ),
        //     BottomNavigationBarItem(
        //       icon:Icon(Icons.home),
        //       label:'ホーム',
        //     ),
        //     BottomNavigationBarItem(
        //       icon:Icon(Icons.person),
        //       label:'アカウント',
        //     ),
        //    ],
        //   ),
         );
        }



    Widget settingButton(BuildContext context,String title) {
      return Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          width: 350,
          height: 75,
          child: ElevatedButton(
            onPressed: () {
              print('$title button pressed!');
            },
            child: Text(title),
          ),
        ),
      );
    }
  }

