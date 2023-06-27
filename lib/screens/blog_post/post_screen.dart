
import 'package:blog_app/screens/blog_post/bottombar.dart';
import 'package:blog_app/screens/blog_post/postapp_bar.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assetName"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
