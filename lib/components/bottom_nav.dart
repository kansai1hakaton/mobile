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
          Navigator.pushNamed(context, '/map');
        } else if (Index == 2) {
          Navigator.pushNamed(context, '/city');
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_city),
          label: 'My Trip',
        ),
      ],
    );
  }
}
