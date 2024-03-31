import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/colors/app_colors.dart';
import '../../../../../config/themes/font_weight.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/methods/get_responsive_text/responsive_text.dart';

class ProfileCard extends StatelessWidget {
  final String imageAsset;
  final String description;
  final String name;
  final String track;

  ProfileCard({
    required this.imageAsset,
    required this.description,
    required this.name,
    required this.track,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        width: ScreenUtil().screenWidth,
        height: 230.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                width: 150.w,
                height: 180.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    imageAsset,
                    fit: BoxFit.cover,
                    width: 180.w, // Use ScreenUtil for responsive width
                    height: 180.h, // Use ScreenUtil for responsive height
                  ),
                ),
              ),
              Spacing.horizontalSpace(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kGrayColor,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 11.4),
                            fontWeight: FontWeightHelper.semiBold,
                          ),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColors.kAmberColor,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      name,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kButtonColor,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 11),
                            fontWeight: FontWeightHelper.semiBold,
                          ),
                    ),
                    Spacing.verticalSpace(2),
                    Text(
                      track,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kGrayColor,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 11),
                            fontWeight: FontWeightHelper.semiBold,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
