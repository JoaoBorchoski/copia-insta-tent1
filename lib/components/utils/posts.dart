import 'package:copia_insta_tent1/components/utils/post.dart';
import 'package:copia_insta_tent1/presentation/providers/posts_provider.dart';
import 'package:copia_insta_tent1/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostsHome extends StatelessWidget {
  const PostsHome({super.key});

  @override
  Widget build(BuildContext context) {
    Posts posts = Provider.of(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.body.withOpacity(0.5),
      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: posts.count,
        itemBuilder: (context, index) => Post(posts.byIndex(index)),
      ),
    );
  }
}
