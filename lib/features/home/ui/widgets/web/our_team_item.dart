import 'package:e_commerce_web/config/colors/app_colors.dart';
import 'package:e_commerce_web/core/components/custom_divider.dart';
import 'package:e_commerce_web/core/constant/app_constant.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurTeamItem extends StatelessWidget {
  const OurTeamItem(
      {super.key,
      required this.name,
      required this.description,
      required this.image,
      required this.jobTitle});
  final String name;
  final String description;
  final String image;
  final String jobTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 10.h,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      height: 300.h,
      width: AppConstant.deviceWidth(context) / 2.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Image.asset(
                height: 200.h,
                width: 100.w,
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 10),
                    color: AppColors.kGreyColor,
                  ),
                ),
                Spacing.verticalSpace(10),
                Row(
                  children: List.generate(
                      5,
                      (index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          )),
                ),
                Spacing.verticalSpace(15),
                myDivider(50.w, 1.h),
                Spacing.verticalSpace(15),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 12),
                    color: AppColors.kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacing.verticalSpace(5),
                Text(
                  jobTitle,
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 11),
                    color: AppColors.kBlackColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
