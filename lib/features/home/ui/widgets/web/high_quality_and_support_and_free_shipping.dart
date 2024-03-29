import 'package:e_commerce_web/core/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import 'container_item.dart';

class HighQualityAndSupportAndFreeShipping extends StatelessWidget {
  const HighQualityAndSupportAndFreeShipping({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstant.deviceWidth(context) / 1.3,
      height: 90.h,
      margin: EdgeInsets.symmetric(vertical: 25.h, horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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
          ContainerItem(
            title: AppLocalizations.of(context)!.highQuality,
            desc: AppLocalizations.of(context)!.createdFromHigh,
            icon: Iconsax.star_outline,
          ),
          ContainerItem(
            title: AppLocalizations.of(context)!.freeShipping,
            desc: AppLocalizations.of(context)!.onAllOrders,
            icon: Iconsax.box_outline,
          ),
          ContainerItem(
            title: AppLocalizations.of(context)!.support,
            desc: AppLocalizations.of(context)!.onlineConsultations,
            icon: Iconsax.call_outline,
          ),
        ],
      ),
    );
  }
}
