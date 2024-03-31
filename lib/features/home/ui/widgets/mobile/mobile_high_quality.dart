import 'package:e_commerce_web/features/home/ui/widgets/mobile/container_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:icons_plus/icons_plus.dart';

class MobileHighQuality extends StatelessWidget {
  const MobileHighQuality({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
