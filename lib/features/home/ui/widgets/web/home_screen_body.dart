import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/web/footer.dart';
import 'package:e_commerce_web/features/home/ui/widgets/web/photos_and_title_and_desc.dart';
import 'package:flutter/material.dart';

import 'besr_selling_category.dart';
import 'high_quality_and_support_and_free_shipping.dart';

class WebHomeScreenBody extends StatelessWidget {
  const WebHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PhotosAndTitleAndDesc(),
          Spacing.verticalSpace(50),
          const HighQualityAndSupportAndFreeShipping(),
          Spacing.verticalSpace(50),
          const BestSellingCategory(),
          const WebFooter(),
        ],
      ),
    );
  }
}
