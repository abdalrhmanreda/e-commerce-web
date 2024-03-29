import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.color,
    this.isCenter,
    this.leadingWidth,
    this.toolbarHeight,
  });

  final Widget? title;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? color;
  final bool? isCenter;
  final double? leadingWidth;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: color,
      title: title,
      actions: actions,
      leading: leading,
      centerTitle: isCenter ?? false,
      leadingWidth: leadingWidth,
      toolbarHeight: toolbarHeight,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
