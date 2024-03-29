import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:e_commerce_web/core/web/hover_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/colors/app_colors.dart';
import '../helpers/spacing.dart';

class FooterInfoItem extends StatelessWidget {
  const FooterInfoItem({
    super.key,
    required this.title,
    required this.item1,
    required this.item2,
    required this.item3,
  });
  final String title;
  final String item1;
  final String item2;
  final String item3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.kWhiteColor,
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                  fontWeight: FontWeightHelper.medium,
                ),
          ),
          Spacing.verticalSpace(15.h),
          HoverText(item: item1),
          Spacing.verticalSpace(10.h),
          HoverText(item: item2),
          Spacing.verticalSpace(10.h),
          HoverText(item: item3),
        ],
      ),
    );
  }
}
