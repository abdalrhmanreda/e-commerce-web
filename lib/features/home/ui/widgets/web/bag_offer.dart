import 'package:e_commerce_web/core/constant/app_constant.dart';
import 'package:e_commerce_web/features/home/ui/widgets/web/image_offering.dart';
import 'package:e_commerce_web/features/home/ui/widgets/web/timer_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';

class HomeBagOffer extends StatelessWidget {
  const HomeBagOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      height: 600.h,
      width: AppConstant.deviceWidth(context),
      color: AppColors.kTanColoe,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: ImageOffering(),
          ),
          TimerPart(),
        ],
      ),
    );
  }
}
