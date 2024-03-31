import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/features/home/ui/widgets/mobile/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../config/themes/font_weight.dart';
import '../../../../../core/methods/get_responsive_text/responsive_text.dart';
import '../../../../../generated/assets.dart';

class MobileOurTeam extends StatelessWidget {
  const MobileOurTeam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            AppLocalizations.of(context)!.ourTeam,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.kButtonColor,
                  fontSize: getResponsiveFontSize(context, fontSize: 20),
                  fontWeight: FontWeightHelper.semiBold,
                ),
          ),
        ),
        Spacing.verticalSpace(10),
        ProfileCard(
          imageAsset: Assets.imagesMohamed,
          description: AppLocalizations.of(context)!.abdalrahmanDescription,
          name: AppLocalizations.of(context)!.mohamedAbdullah,
          track: AppLocalizations.of(context)!.flutterDeveloper,
        ),
        ProfileCard(
          imageAsset: Assets.imagesAbdo,
          description: AppLocalizations.of(context)!.abdalrahmanDescription,
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
    );
  }
}
