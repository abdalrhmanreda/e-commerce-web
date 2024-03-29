import 'package:e_commerce_web/core/web/nav_bar_web.dart';
import 'package:e_commerce_web/features/home/ui/widgets/web/home_screen_body.dart';
import 'package:flutter/material.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: WebNavBar(),
      body: WebHomeScreenBody(),
    );
  }
}
