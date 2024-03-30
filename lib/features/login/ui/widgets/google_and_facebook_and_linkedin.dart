import 'package:e_commerce_web/config/colors/app_colors.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class GoogleAndFacebookAndLinkedin extends StatelessWidget {
  const GoogleAndFacebookAndLinkedin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.kButtonColor,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: Icon(
              Bootstrap.facebook,
              color: AppColors.kButtonColor,
              size: 20,
            ),
          ),
        ),
        Spacing.horizontalSpace(25),
        const CircleAvatar(
          backgroundColor: AppColors.kButtonColor,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: Icon(
              Bootstrap.google,
              color: AppColors.kButtonColor,
              size: 20,
            ),
          ),
        ),
        Spacing.horizontalSpace(25),
        const CircleAvatar(
          backgroundColor: AppColors.kButtonColor,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: Icon(
              Bootstrap.linkedin,
              color: AppColors.kButtonColor,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
