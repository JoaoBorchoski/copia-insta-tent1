import 'package:copia_insta_tent1/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class FooterBar extends StatelessWidget {
  final controller;

  const FooterBar({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                if (controller.hasClients) {
                  final position = controller.position.minScrollExtent;
                  controller.animateTo(
                    position,
                    duration: const Duration(seconds: 1),
                    curve: Curves.linearToEaseOut,
                  );
                }
              },
              icon: const Icon(Icons.home_filled),
              iconSize: 40),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 40,
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box), iconSize: 40),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}
