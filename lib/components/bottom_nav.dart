import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int Index) {
        if (Index == 0) {
          Navigator.pushNamed(context, '/');
        } else if (Index == 1) {
          Navigator.pushNamed(context, '/business');
        } else if (Index == 2) {
          Navigator.pushNamed(context, '/school');
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
    );
  }
}
