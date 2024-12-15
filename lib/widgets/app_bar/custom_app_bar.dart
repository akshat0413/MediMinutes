import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style { bgFillGreen20001, bgFillGreen200, whiteA70001 }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.shape,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          key: key,
        );

  final double? height;

  final ShapeBorder? shape;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      shape: shape,
      toolbarHeight: height ?? 60.h,
      automaticallyImplyLeading: false,
      flexibleSpace: _getStyle(),
      backgroundColor: Colors.white,
      // theme.colorScheme.primary,
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 52.h,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillGreen20001:
        return Container(
          height: 1.h,
          width: 394.h,
          decoration: BoxDecoration(
              color: appTheme.green20001
                  .withOpacity(0.43) //theme.colorScheme.primary,
              ),
        );
      case Style.bgFillGreen200:
        return Container(
          height: 72.h,
          width: 390.h,
          // decoration: BoxDecoration(color: Colors.white
          //     //theme.colorScheme.primary,
          //     ),
        );
      case Style.whiteA70001:
        return Container(
          height: 72.h,
          width: 390.h,
          decoration: BoxDecoration(
              color: appTheme.whiteA70001 //theme.colorScheme.primary,
              ),
        );
      default:
        return null;
    }
  }
}
