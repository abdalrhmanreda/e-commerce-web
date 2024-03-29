import 'package:flutter/material.dart';

import '../widgets/mobile/mobile_home_screen.dart';
import '../widgets/web/home_web.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return const WebHomeScreen();
      } else {
        return const MobileHomeScreen();
      }
    });
  }
}
