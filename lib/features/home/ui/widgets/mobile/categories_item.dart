import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image(
          image: const AssetImage(Assets.imagesJeffTumaleSD9Jyl1xNQ4Unsplash),
          fit: BoxFit.cover,
          height: 100.h,
          width: 110.w,
        ),
        Container(
          width: 110.w,
          color: Colors.black.withOpacity(.7),
          child: const Text(
            'category',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
