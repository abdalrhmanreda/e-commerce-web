import 'package:e_commerce_web/core/constant/app_constant.dart';
import 'package:e_commerce_web/features/home/ui/widgets/web/title_and_description.dart';
import 'package:e_commerce_web/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotosAndTitleAndDesc extends StatelessWidget {
  const PhotosAndTitleAndDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      width: AppConstant.deviceWidth(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const TitleAndDescription(),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: SizedBox(
              width: AppConstant.deviceWidth(context) / 2.5,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    Assets.imagesManCloth,
                    fit: BoxFit.cover,
                    width: 90.w,
                    height: 350.h,
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        Assets.imagesJeffTumaleSD9Jyl1xNQ4Unsplash,
                        fit: BoxFit.cover,
                        width: 90.w,
                        height: 350.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
