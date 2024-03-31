import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/features/home/ui/widgets/mobile/container_item.dart';
import 'package:e_commerce_web/features/home/ui/widgets/mobile/drawer.dart';
import 'package:e_commerce_web/features/home/ui/widgets/mobile/team.dart';
import 'package:e_commerce_web/features/home/ui/widgets/mobile/time_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../config/themes/font_weight.dart';
import '../../../../../core/components/custom_button.dart';
import '../../../../../core/constant/app_constant.dart';
import '../../../../../core/methods/get_responsive_text/responsive_text.dart';
import '../../../../../generated/assets.dart';
import 'cat_and_related_photo.dart';
import 'categories_item.dart';

class MobileHomeScreen extends StatelessWidget {
  final _advancedDrawerController = AdvancedDrawerController();
  MobileHomeScreen({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppConstant.deviceWidth(context) / 1.2,
                    height: 250.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          'assets/images/man_cloth.jpg', // Replace with your image asset path
                          fit: BoxFit.cover,
                          width: 200.w, // Use ScreenUtil for responsive width
                          height: 200.h, // Use ScreenUtil for responsive height
                        ),
                        Positioned(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              Assets
                                  .imagesJeffTumaleSD9Jyl1xNQ4Unsplash, // Replace with your image asset path
                              fit: BoxFit.cover,
                              width:
                                  200.w, // Use ScreenUtil for responsive width
                              height:
                                  200.h, // Use ScreenUtil for responsive height
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacing.verticalSpace(20),
                  Text(
                    AppLocalizations.of(context)!.shopSmart,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.kButtonColor,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 20),
                          fontWeight: FontWeightHelper.semiBold,
                        ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.homeDescription,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.kButtonColor,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 14),
                          fontWeight: FontWeightHelper.regular,
                        ),
                  ),
                  CustomButton(
                    radius: 10.r,
                    onPressed: () {},
                    text: AppLocalizations.of(context)!.shopNow,
                    color: AppColors.kBlackColor,
                    width: 150.w,
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      ContainerItemMobile(
                        title: AppLocalizations.of(context)!.highQuality,
                        icon: Iconsax.document_favorite_outline,
                      ),
                      ContainerItemMobile(
                        title: AppLocalizations.of(context)!.freeShipping,
                        icon: Iconsax.box_1_outline,
                      ),
                    ],
                  ),
                  Spacing.verticalSpace(10),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      AppLocalizations.of(context)!.bestSellingCategories,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kButtonColor,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 20),
                            fontWeight: FontWeightHelper.semiBold,
                          ),
                    ),
                  ),
                  Spacing.verticalSpace(10),
                  SizedBox(
                      height: 110.h,
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => CategoriesItem(),
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 5,
                              ),
                          itemCount: 5)),
                  Spacing.verticalSpace(10),
                  const ImageOffering(),
                  Spacing.verticalSpace(20),
                  const TimerPart(),
                  Spacing.verticalSpace(10),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      AppLocalizations.of(context)!.ourTeam,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kButtonColor,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 20),
                            fontWeight: FontWeightHelper.semiBold,
                          ),
                    ),
                  ),
                  ProfileCard(
                    imageAsset: Assets.imagesMohamed,
                    description:
                        AppLocalizations.of(context)!.abdalrahmanDescription,
                    name: AppLocalizations.of(context)!.mohamedAbdullah,
                    track: AppLocalizations.of(context)!.flutterDeveloper,
                  ),
                  ProfileCard(
                    imageAsset: Assets.imagesAbdo,
                    description:
                        AppLocalizations.of(context)!.abdalrahmanDescription,
                    name: AppLocalizations.of(context)!.abdalrahman,
                    track: AppLocalizations.of(context)!.flutterDeveloper,
                  ),
                  ProfileCard(
                    imageAsset: Assets.imagesTarek,
                    description: AppLocalizations.of(context)!.tarekDescription,
                    name: AppLocalizations.of(context)!.tarek,
                    track: AppLocalizations.of(context)!.backendDeveloper,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
