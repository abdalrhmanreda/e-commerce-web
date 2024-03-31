import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:e_commerce_web/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/colors/app_colors.dart';

class ImageOffering extends StatefulWidget {
  const ImageOffering({Key? key});

  @override
  State<ImageOffering> createState() => _ImageOfferingState();
}

class _ImageOfferingState extends State<ImageOffering> {
  List<String> images = [
    Assets.imagesClothing,
    Assets.imagesGlasess,
    Assets.imagesManShoes,
  ];
  List<String> titles(context) => [
        AppLocalizations.of(context)!.clothing,
        AppLocalizations.of(context)!.accessories,
        AppLocalizations.of(context)!.shoes,
      ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacing.verticalSpace(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            titles(context).length,
            (index) => InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Text(
                titles(context)[index],
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: selectedIndex == index
                          ? AppColors.kBlackColor
                          : AppColors.kGrayColor,
                      fontSize: getResponsiveFontSize(context, fontSize: 16),
                      fontWeight: FontWeightHelper.bold,
                    ),
              ),
            ),
          ),
        ),
        Spacing.verticalSpace(10.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundColor: AppColors.kBlackColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.saleOff,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.kWhiteColor,
                        ),
                  ),
                  Text(
                    '50%',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.kWhiteColor,
                        ),
                  ),
                ],
              ),
            ),
            Spacing.horizontalSpace(10.h),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeIn,
              child: Image.asset(
                images[selectedIndex],
                fit: BoxFit.cover,
                key: UniqueKey(), // Provide a unique key here
                width: 200.w,
                height: 200.h,
              ),
            ),
            Spacing.verticalSpace(10.h),
          ],
        ),
      ],
    );
  }
}
