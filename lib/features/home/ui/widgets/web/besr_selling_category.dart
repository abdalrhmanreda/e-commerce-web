import 'package:e_commerce_web/core/constant/app_constant.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:e_commerce_web/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../data/models/category_model.dart';
import 'best_selling_category_item.dart';

class BestSellingCategory extends StatelessWidget {
  const BestSellingCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = [
      CategoryModel(
        name: AppLocalizations.of(context)!.shoes,
        image: Assets.imagesJeffTumaleSD9Jyl1xNQ4Unsplash,
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.clothing,
        image: Assets.imagesManCloth,
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.electronics,
        image: Assets.imagesHeadPhone,
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.appliances,
        image: Assets.categoriesAppliances,
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.fitnessEquipment,
        image: Assets.categoriesFitness,
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.furniture,
        image: Assets.categoriesFurniture,
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.jewelryWatches,
        image: Assets.categoriesJewelry,
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.sportswear,
        image: Assets.categoriesSportswear,
      ),
    ];
    var pageController = PageController(viewportFraction: .2, initialPage: 2);
    return SizedBox(
      width: AppConstant.deviceWidth(context),
      height: 600.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.bestSellingCategories,
            style: GoogleFonts.poppins(
              fontSize: getResponsiveFontSize(context, fontSize: 30),
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacing.verticalSpace(25),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: const Icon(Iconsax.arrow_left_2_outline),
                iconSize: 30,
                color: Colors.black,
              ),
              SizedBox(
                height: 370.h,
                width: AppConstant.deviceWidth(context) / 1.09,
                child: PageView(
                  pageSnapping: true,
                  controller: pageController,
                  children: List.generate(
                    categories.length,
                    (index) => BestSellingCategoryItem(
                      title: categories[index].name,
                      image: categories[index].image,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: const Icon(Iconsax.arrow_right_3_outline),
                iconSize: 30,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
*
*           Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: .62,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) => BestSellingCategoryItem(
                title: categories[index].name,
                image: categories[index].image,
              ),
            ),
          )

* */
