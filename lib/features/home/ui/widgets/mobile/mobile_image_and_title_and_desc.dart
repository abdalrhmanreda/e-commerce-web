import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../config/themes/font_weight.dart';
import '../../../../../core/components/custom_button.dart';
import '../../../../../core/constant/app_constant.dart';
import '../../../../../core/methods/get_responsive_text/responsive_text.dart';
import '../../../../../generated/assets.dart';

class MobileImageAndTitleAndDesc extends StatelessWidget {
  const MobileImageAndTitleAndDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: AppConstant.deviceWidth(context) / 1.2,
          height: 250.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                Assets.imagesManCloth, // Replace with your image asset path
                fit: BoxFit.cover,
                width: 200.w, // Use ScreenUtil for responsive width
                height: 200.h, // Use ScreenUtil for responsive height
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    Assets
                        .imagesJeffTumaleSD9Jyl1xNQ4Unsplash, // Replace with your image asset path
                    fit: BoxFit.cover,
                    width: 200.w, // Use ScreenUtil for responsive width
                    height: 200.h, // Use ScreenUtil for responsive height
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacing.verticalSpace(20),
        Text(
          AppLocalizations.of(context)!.shopSmart,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.kButtonColor,
                fontSize: getResponsiveFontSize(context, fontSize: 20),
                fontWeight: FontWeightHelper.semiBold,
              ),
        ),
        Spacing.verticalSpace(10),
        Text(
          AppLocalizations.of(context)!.homeDescription,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.kButtonColor,
                fontSize: getResponsiveFontSize(context, fontSize: 14),
                fontWeight: FontWeightHelper.regular,
              ),
        ),
        CustomButton(
          radius: 10.r,
          onPressed: () {},
          text: AppLocalizations.of(context)!.shopNow,
          color: AppColors.kBlackColor,
          width: 150.w,
          height: 40.h,
        ),
      ],
    );
  }
}
