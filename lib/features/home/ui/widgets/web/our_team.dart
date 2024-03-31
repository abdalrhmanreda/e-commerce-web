import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/constant/app_constant.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:e_commerce_web/features/home/ui/widgets/web/our_team_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';

class OurTeam extends StatelessWidget {
  const OurTeam({super.key});

  @override
  Widget build(BuildContext context) {
    var pageController = PageController(
      viewportFraction: .5,
      initialPage: 1,
    );
    return SizedBox(
      height: 400.h,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.ourTeam,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 22),
                  fontWeight: FontWeightHelper.semiBold,
                ),
          ),
          Spacing.verticalSpace(35),
          Expanded(
            child: SizedBox(
              width: AppConstant.deviceWidth(context),
              child: PageView(
                allowImplicitScrolling: true,
                scrollDirection: Axis.horizontal,
                controller: pageController,
                children: [
                  OurTeamItem(
                    name: AppLocalizations.of(context)!.tarek,
                    description: AppLocalizations.of(context)!.tarekDescription,
                    image: Assets.imagesTarek,
                    jobTitle: AppLocalizations.of(context)!.backendDeveloper,
                  ),
                  OurTeamItem(
                    name: AppLocalizations.of(context)!.abdalrahman,
                    description:
                        AppLocalizations.of(context)!.abdalrahmanDescription,
                    image: Assets.imagesAbdo,
                    jobTitle: AppLocalizations.of(context)!.flutterDeveloper,
                  ),
                  OurTeamItem(
                    name: AppLocalizations.of(context)!.mohamedAbdullah,
                    description:
                        AppLocalizations.of(context)!.abdalrahmanDescription,
                    image: Assets.imagesMohamed,
                    jobTitle: AppLocalizations.of(context)!.flutterDeveloper,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
