import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/features/home/ui/widgets/mobile/drawer.dart';
import 'package:e_commerce_web/features/home/ui/widgets/mobile/time_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../config/themes/font_weight.dart';
import '../../../../../core/methods/get_responsive_text/responsive_text.dart';
import 'cat_and_related_photo.dart';
import 'mobile_best_selling.dart';
import 'mobile_high_quality.dart';
import 'mobile_image_and_title_and_desc.dart';
import 'mobile_our_team.dart';

class MobileHomeScreen extends StatelessWidget {
  final _advancedDrawerController = AdvancedDrawerController();
  MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: const DrawerC(),
      child: Scaffold(
          appBar: AppBar(
            title: RichText(
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
            leading: IconButton(
              onPressed: _advancedDrawerController.toggleDrawer,
              icon: const Icon(Iconsax.textalign_justifyleft_outline),
            ),
            actions: [
              const Icon(Iconsax.search_normal_1_outline),
              Spacing.horizontalSpace(10),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MobileImageAndTitleAndDesc(),
                  Spacing.verticalSpace(20),
                  const MobileHighQuality(),
                  Spacing.verticalSpace(20),
                  const MobileBestSelling(),
                  Spacing.verticalSpace(20),
                  const ImageOfferingMobile(),
                  Spacing.verticalSpace(20),
                  const TimerPartMobile(),
                  Spacing.verticalSpace(20),
                  const MobileOurTeam(),
                ],
              ),
            ),
          )),
    );
  }
}
