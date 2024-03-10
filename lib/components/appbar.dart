import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? imageLink;
  final bool backButton;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.imageLink,
    required this.backButton,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backButton != false
          ? IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios),
            )
          : SizedBox(),
      title: Text(title!),
      elevation: 10,
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: imageLink == null
              ? ClipOval(
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/previews/002/318/271/original/user-profile-icon-free-vector.jpg',
                    fit: BoxFit.fill,
                    width: 40,
                    height: 40,
                  ),
                )
              : ClipOval(
                  child: Image.network(
                    imageLink!,
                    fit: BoxFit.fill,
                    width: 40,
                    height: 40,
                  ),
                ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
