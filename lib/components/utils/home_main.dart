// ignore_for_file: prefer_const_constructors
import 'package:copia_insta_tent1/components/utils/posts.dart';
import 'package:copia_insta_tent1/components/utils/storys.dart';
import 'package:flutter/material.dart';

class MainMenuBody extends StatelessWidget {
  const MainMenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    //Users users = Provider.of(context, listen: false);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            Storys(),
            Expanded(child: PostsHome()),
          ],
        ),
      ),
    );
  }
}
