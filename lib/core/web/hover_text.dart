import 'package:flutter/material.dart';

import '../../config/colors/app_colors.dart';
import '../methods/get_responsive_text/responsive_text.dart';

class HoverText extends StatefulWidget {
  const HoverText({super.key, required this.item});
  final String item;

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: Text(
        widget.item,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: _isHovering ? AppColors.kWhiteColor : AppColors.kGrayColor,
              fontSize: getResponsiveFontSize(context, fontSize: 11),
            ),
      ),
    );
  }
}
