import 'package:e_commerce_web/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class DrawerC extends StatelessWidget {
  const DrawerC({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 128.0,
              height: 128.0,
              margin: const EdgeInsets.only(
                top: 24.0,
                bottom: 64.0,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                Assets.imagesMohamed,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Iconsax.home_2_outline),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Iconsax.profile_2user_outline),
              title: const Text('Profile'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Iconsax.heart_outline),
              title: const Text('Favourites'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Iconsax.setting_outline),
              title: Text('Settings'),
            ),
            Spacer(),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: Text('Terms of Service | Privacy Policy'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
