import 'package:copia_insta_tent1/components/utils/story.dart';
import 'package:copia_insta_tent1/presentation/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:copia_insta_tent1/shared/themes/app_colors.dart';

class Storys extends StatelessWidget {
  const Storys({super.key});

  @override
  Widget build(BuildContext context) {
    Users users = Provider.of(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.body.withOpacity(0.5),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.count,
        itemBuilder: (context, index) => StoryHeader(users.byIndex(index)),
      ),
    );
  }
}
