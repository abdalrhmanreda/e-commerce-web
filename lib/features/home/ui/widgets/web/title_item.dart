import 'dart:async';

import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/helpers/spacing.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';

class TitlePartItem extends StatefulWidget {
  const TitlePartItem({super.key, required this.title, required this.index});
  final String title;
  final int index;

  @override
  _TitlePartItemState createState() => _TitlePartItemState();
}

class _TitlePartItemState extends State<TitlePartItem> {
  bool isHover = false;
  double underlineWidth = 0.0;
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startAnimation() {
    timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      setState(() {
        underlineWidth += 1.0; // Increase width step by step
        if (underlineWidth >= 15) {
          timer.cancel(); // Stop the timer when reached desired width
        }
      });
    });
  }

  void resetAnimation() {
    timer?.cancel();
    setState(() {
      underlineWidth = 0.0; // Reset width when mouse exits
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHover = true;
        });
        startAnimation(); // Start animation when mouse enters
      },
      onExit: (_) {
        setState(() {
          isHover = false;
        });
        resetAnimation(); // Reset animation when mouse exits
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 14),
                  color: AppColors.kBlackColor,
                  fontWeight: FontWeightHelper.medium,
                ),
          ),
          Spacing.verticalSpace(5),
          AnimatedContainer(
            duration: const Duration(milliseconds: 35),
            height: 2,
            width: underlineWidth.w, // Use animated width
            color: isHover ? AppColors.kButtonColor : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
