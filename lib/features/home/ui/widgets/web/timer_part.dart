import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/components/custom_button.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import '../../../../../config/colors/app_colors.dart';

class TimerPart extends StatelessWidget {
  const TimerPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        bottom: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.dealOfTheDay,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 16),
                  color: AppColors.kRedColor,
                ),
          ),
          Spacing.verticalSpace(20),
          Text(
            AppLocalizations.of(context)!.multiPocket,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 25),
                  fontWeight: FontWeightHelper.medium,
                ),
          ),
          Spacing.verticalSpace(20),
          TimerCountdown(
            format: CountDownTimerFormat.daysHoursMinutesSeconds,
            timeTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 18),
                  color: AppColors.kBlackColor,
                  fontWeight: FontWeightHelper.semiBold,
                ),
            endTime: DateTime.now().add(
              const Duration(
                days: 5,
                hours: 14,
                minutes: 27,
                seconds: 34,
              ),
            ),
            onEnd: () {
              print("Timer finished");
            },
          ),
          Spacing.verticalSpace(20),
          SizedBox(
            width: 100.w, // Adjust the width as needed
            child: CustomButton(
              onPressed: () {},
              text: AppLocalizations.of(context)!.shopNow,
              color: AppColors.kButtonColor,
              width: 100.w,
              radius: 15.r,
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: getResponsiveFontSize(context, fontSize: 15),
                    fontWeight: FontWeightHelper.semiBold,
                    color: AppColors.kWhiteColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
