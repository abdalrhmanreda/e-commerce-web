import 'package:e_commerce_web/core/constant/app_constant.dart';
import 'package:e_commerce_web/features/home/ui/widgets/web/title_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../config/themes/font_weight.dart';
import '../../../../../core/methods/get_responsive_text/responsive_text.dart';
import 'action_part.dart';

class TitlePart extends StatelessWidget {
  const TitlePart({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleList = [
      AppLocalizations.of(context)!.home,
      AppLocalizations.of(context)!.shop,
      AppLocalizations.of(context)!.about,
      AppLocalizations.of(context)!.contact,
    ];
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 10.h,
            ),
            child: RichText(
              text: TextSpan(
                text: AppLocalizations.of(context)!.titlePart1,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.kButtonColor,
                      fontSize: getResponsiveFontSize(context, fontSize: 30),
                      fontWeight: FontWeightHelper.semiBold,
                    ),
                children: [
                  TextSpan(
                    text: AppLocalizations.of(context)!.titlePart2,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.kButtonColor,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeightHelper.regular,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.h,
            ),
            child: SizedBox(
              width: AppConstant.deviceWidth(context) / 2.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  titleList.length,
                  (index) =>
                      TitlePartItem(title: titleList[index], index: index),
                ),
              ),
            ),
          ),
          const ActionPart(),
        ],
      ),
    );
  }
}
