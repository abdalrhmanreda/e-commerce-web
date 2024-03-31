import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:e_commerce_web/generated/assets.dart';
import 'package:flutter/material.dart';
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
        AppLocalizations.of(context)!.shoesCollection,
      ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
                        fontSize: getResponsiveFontSize(context, fontSize: 30),
                        fontWeight: FontWeightHelper.bold,
                      ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundColor: AppColors.kBlackColor,
                child: Text(
                  AppLocalizations.of(context)!.saleOff,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.kWhiteColor,
                      ),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                switchInCurve: Curves.easeIn,
                child: Image.asset(
                  images[selectedIndex],
                  key: UniqueKey(), // Provide a unique key here
                  width: 500.w,
                  height: 450.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
