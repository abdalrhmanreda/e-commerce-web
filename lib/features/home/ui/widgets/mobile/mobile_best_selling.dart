import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../config/themes/font_weight.dart';
import '../../../../../core/methods/get_responsive_text/responsive_text.dart';
import '../../../../../generated/assets.dart';
import '../../../data/models/category_model.dart';
import 'categories_item.dart';

class MobileBestSelling extends StatelessWidget {
  const MobileBestSelling({
    super.key,
  });

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

    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            AppLocalizations.of(context)!.bestSellingCategories,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.kButtonColor,
                  fontSize: getResponsiveFontSize(context, fontSize: 20),
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
            itemBuilder: (context, index) => CategoriesItemMobile(
              category: categories[index].name,
              image: categories[index].image,
            ),
            separatorBuilder: (context, index) => Spacing.horizontalSpace(10),
            itemCount: categories.length,
          ),
        ),
      ],
    );
  }
}
