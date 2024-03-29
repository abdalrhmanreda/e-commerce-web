import 'package:e_commerce_web/core/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home/ui/widgets/web/title_part.dart';

class WebNavBar extends StatelessWidget implements PreferredSizeWidget {
  const WebNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      toolbarHeight: 80.h,
      title: const TitlePart(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80.h);
}
