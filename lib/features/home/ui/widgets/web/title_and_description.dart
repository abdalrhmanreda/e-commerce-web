import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/components/custom_button.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../config/colors/app_colors.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 35.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.shopSmart,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: getResponsiveFontSize(context, fontSize: 30),
              fontWeight: FontWeightHelper.semiBold,
            ),
          ),
          Spacing.verticalSpace(10),
          Text(
            AppLocalizations.of(context)!.homeDescription,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeightHelper.regular,
            ),
          ),
          Spacing.verticalSpace(20),
          CustomButton(
            onPressed: () {},
            color: AppColors.kButtonColor,
            text: AppLocalizations.of(context)!.shopNow,
            width: 60.w,
            height: 45.h,
            radius: 5.r,
            textStyle: GoogleFonts.elMessiri(
              color: AppColors.kWhiteColor,
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeightHelper.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
