import 'package:e_commerce_web/config/colors/app_colors.dart';
import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/components/custom_button.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:e_commerce_web/features/login/ui/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/app_constant.dart';
import '../widgets/google_and_facebook_and_linkedin.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key, required this.isSignUp});
  final bool isSignUp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.w,
        left: 15.w,
        top: 20.h,
        bottom: 20.h,
      ),
      child: SizedBox(
        width: AppConstant.deviceWidth(context) / 2.4,
        height: AppConstant.deviceHeight(context) / 1.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.signUp,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: getResponsiveFontSize(context, fontSize: 25),
                    fontWeight: FontWeightHelper.bold,
                  ),
            ),
            Spacing.verticalSpace(25),
            const GoogleAndFacebookAndLinkedin(),
            Spacing.verticalSpace(25),
            Text(
              AppLocalizations.of(context)!.orUserYourAccount,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: getResponsiveFontSize(context, fontSize: 12),
                    fontWeight: FontWeightHelper.regular,
                    color: AppColors.kGrayColor,
                  ),
            ),
            Spacing.verticalSpace(10),
            const RegisterForm(),
            Spacing.verticalSpace(15),
            CustomButton(
              onPressed: () {},
              text: AppLocalizations.of(context)!.signUp,
              width: AppConstant.deviceWidth(context) / 4.2,
              color: AppColors.kButtonColor,
              radius: 25.r,
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: getResponsiveFontSize(context, fontSize: 16),
                    fontWeight: FontWeightHelper.semiBold,
                    color: AppColors.kWhiteColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
