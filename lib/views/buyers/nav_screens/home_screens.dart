import 'package:eshop/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:eshop/views/buyers/nav_screens/widgets/search_widget_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/welcomeWidget_Text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        WelcomeText(),
        SizedBox(height: 14),
        SearchInputWidget(),
        SizedBox(height: 10),
        BannerWidget()
      ],
    );
  }
}




