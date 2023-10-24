import 'package:copia_insta_tent1/components/utils/storys_page.dart';
import 'package:copia_insta_tent1/presentation/providers/user_provider.dart';
import 'package:copia_insta_tent1/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainMenuBody extends StatelessWidget {
  const MainMenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    Users users = Provider.of(context, listen: false);
    return Scrollbar(
      thickness: 3,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  color: AppColors.body,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: users.count,
                    itemBuilder: (context, index) =>
                        StoryHeader(users.byIndex(index)),
                  ))
            ],
          )),
    );
  }
}
