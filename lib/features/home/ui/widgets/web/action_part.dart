import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../config/colors/app_colors.dart';

class ActionPart extends StatelessWidget {
  const ActionPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 5.w,
          ),
          child: const Icon(
            Iconsax.search_normal_outline,
            color: AppColors.kButtonColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 5.w,
          ),
          child: const Icon(
            Iconsax.profile_circle_bold,
            color: AppColors.kButtonColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 5.w,
          ),
          child: const Icon(
            Iconsax.heart_outline,
            color: AppColors.kButtonColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 5.w,
          ),
          child: const Icon(
            Iconsax.shopping_cart_outline,
            color: AppColors.kButtonColor,
          ),
        ),
      ],
    );
  }
}
