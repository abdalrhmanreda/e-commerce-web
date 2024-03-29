import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../config/colors/app_colors.dart';
import '../methods/url_lunch/url_lunch.dart';

class FooterPartOne extends StatelessWidget {
  const FooterPartOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${AppLocalizations.of(context)!.titlePart1}${AppLocalizations.of(context)!.titlePart2}",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.kWhiteColor,
                  fontSize: getResponsiveFontSize(context, fontSize: 20),
                ),
          ),
          Spacing.verticalSpace(15),
          Text(
            AppLocalizations.of(context)!.homeDescription,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.kGrayColor,
                  fontSize: getResponsiveFontSize(context, fontSize: 10),
                ),
          ),
          Spacing.verticalSpace(15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  launchUrlMethod(
                      link:
                          'https://www.facebook.com/profile.php?id=100009576528529');
                },
                icon: const Icon(
                  Bootstrap.facebook,
                  color: AppColors.kWhiteColor,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  launchUrlMethod(
                      link:
                          'https://www.instagram.com/abdalrhman_red3/saved/flutter/17981367869148449/');
                },
                icon: const Icon(
                  Bootstrap.instagram,
                  color: AppColors.kWhiteColor,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  launchUrlMethod(link: 'https://github.com/abdalrhmanreda');
                },
                icon: const Icon(
                  Bootstrap.github,
                  color: AppColors.kWhiteColor,
                  size: 20,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            AppLocalizations.of(context)!.allRightsReserved,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.kGrayColor,
                  fontSize: getResponsiveFontSize(context, fontSize: 12),
                ),
          ),
        ],
      ),
    );
  }
}
