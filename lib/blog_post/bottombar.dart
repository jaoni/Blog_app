import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      items: const [
        Icon(Icons.home, size: 30),
        Icon(
          Icons.favorite_outline,
          size: 30,
        ),
        Icon(
          Icons.home,
          size: 30,
        ),
        Icon(
          Icons.home,
          size: 30,
        ),
        Icon(
          Icons.home,
          size: 30,
        )
      ],
    );
  }
}
