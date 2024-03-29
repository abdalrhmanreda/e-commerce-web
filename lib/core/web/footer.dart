import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/colors/app_colors.dart';
import '../constant/app_constant.dart';
import 'footer_info_item.dart';
import 'footer_part_one.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
        vertical: 25.h,
      ),
      height: 300.h,
      width: AppConstant.deviceWidth(context),
      color: AppColors.kFooterColor,
      child: Row(
        children: [
          const FooterPartOne(),
          Expanded(
            child: Row(
              children: [
                FooterInfoItem(
                  title: AppLocalizations.of(context)!.information,
                  item1: AppLocalizations.of(context)!.about,
                  item2: AppLocalizations.of(context)!.products,
                  item3: AppLocalizations.of(context)!.blog,
                ),
                FooterInfoItem(
                  title: AppLocalizations.of(context)!.company,
                  item1: AppLocalizations.of(context)!.community,
                  item2: AppLocalizations.of(context)!.careers,
                  item3: AppLocalizations.of(context)!.ourStory,
                ),
                FooterInfoItem(
                  title: AppLocalizations.of(context)!.contact,
                  item1: AppLocalizations.of(context)!.getStarted,
                  item2: AppLocalizations.of(context)!.pricing,
                  item3: AppLocalizations.of(context)!.resources,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
