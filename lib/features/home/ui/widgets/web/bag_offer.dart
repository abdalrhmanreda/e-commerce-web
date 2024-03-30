import 'package:e_commerce_web/core/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';

class HomeBagOffer extends StatelessWidget {
  const HomeBagOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: AppConstant.deviceWidth(context),
      color: AppColors.kTanColoe,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundColor: AppColors.kBlackColor,
            child: Text(
              AppLocalizations.of(context)!.saleOff,
            ),
          ),
        ],
      ),
    );
  }
}
