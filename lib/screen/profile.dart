import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile/screen/profile2.dart';

class ProfileScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile 編集'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  child: Text("編集を終了"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile2Screen()),
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Icon(Icons.account_circle, size: 96), // アイコンを配置
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(right: 150, left: 150, bottom: 20), //左、右、上、下
            child: TextField(
              textAlign: TextAlign.center, // テキストを中央揃えにする
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                hintText: "name",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 50, vertical: 10), //horizonta:左右、vertical上下
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "nickname",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 50, vertical: 10), //horizonta:左右、vertical上下
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.cake),
                hintText: "birthday",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 50, vertical: 10), //horizonta:左右、vertical上下
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.edit),
                hintText: "comment",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 50, vertical: 10), //horizonta:左右、vertical上下
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.directions_walk),
                hintText: "have visited",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 50, vertical: 20), //horizonta:左右、vertical上下
            child: Text(
              "書いた記事",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
