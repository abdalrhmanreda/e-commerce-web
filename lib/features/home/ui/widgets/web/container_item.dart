import 'package:e_commerce_web/config/colors/app_colors.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({
    super.key,
    required this.title,
    required this.desc,
    required this.icon,
  });
  final String title;
  final String desc;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon),
                Spacing.horizontalSpace(10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 16),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacing.verticalSpace(10),
            Padding(
              padding: EdgeInsets.only(
                left: 8.w,
              ),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: getResponsiveFontSize(context, fontSize: 11),
                      color: AppColors.kGrayColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
