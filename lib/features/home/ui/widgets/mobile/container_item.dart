import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_commerce_web/config/colors/app_colors.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';

class ContainerItemMobile extends StatelessWidget {
  const ContainerItemMobile({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 35.h,
        child: Card(
          color: AppColors.kWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(icon),
                  Spacing.horizontalSpace(3),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 12),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
