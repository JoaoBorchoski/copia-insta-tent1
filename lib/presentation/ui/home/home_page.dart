import 'package:copia_insta_tent1/components/utils/home_main.dart';
import 'package:copia_insta_tent1/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async {
        bool retorno = true;
        Navigator.of(context).pushReplacementNamed('/');
        return retorno;
      }),
      child: Scaffold(
          appBar: AppBar(
            leading:
                // ignore: dead_code
                true ? const BackButton(color: AppColors.background) : null,
            title: const Text('Teste massa hein'),
            backgroundColor: AppColors.primary,
          ),
          body: const MainMenuBody()),
    );
  }
}
