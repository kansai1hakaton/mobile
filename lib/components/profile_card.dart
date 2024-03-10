import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const ProfileCard({
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(360)),
              child: Image.network(
                'https://th.bing.com/th/id/OIP.2gDO0D0JtHDfc_8LoSWoGAAAAA?w=189&h=187&c=7&r=0&o=5&dpr=2&pid=1.7',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text('猫ミーム'),
          ),
        ],
      ),
    );
  }
}
