import 'package:e_commerce_web/config/colors/app_colors.dart';
import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellingCategoryItem extends StatefulWidget {
  const BestSellingCategoryItem({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  State<BestSellingCategoryItem> createState() =>
      _BestSellingCategoryItemState();
}

class _BestSellingCategoryItemState extends State<BestSellingCategoryItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: AppColors.kButtonColor.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ]
              : null,
        ),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60.w,
                height: 300.h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 60.w,
                height: 50.h,
                decoration: const BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(widget.title,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 14),
                            fontWeight: FontWeightHelper.semiBold,
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
