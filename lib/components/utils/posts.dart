import 'package:copia_insta_tent1/components/utils/post.dart';
import 'package:copia_insta_tent1/presentation/providers/posts_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_scroll_to_top/flutter_scroll_to_top.dart';

class PostsHome extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;

  const PostsHome({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    Posts posts = Provider.of(context, listen: false);
    return Container(
      child: ScrollWrapper(
        builder: (context, properties) => ListView.builder(
          controller: controller,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: posts.count,
          itemBuilder: (context, index) => Post(posts.byIndex(index)),
        ),
      ),
    );
  }
}
