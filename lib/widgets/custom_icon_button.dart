import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientOrangeToDeepOrangeA => BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.orange200, appTheme.deepOrangeA200],
        ),
      );
  static BoxDecoration get gradientLightBlueToBlueA => BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightBlue300, appTheme.blueA200],
        ),
      );
  static BoxDecoration get gradiantOrangeToDeepOrangeA => BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.orange200, appTheme.deepOrangeA200],
        ),
      );
  static BoxDecoration get gradientGrayToBlueGray => BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray60001, appTheme.blueGray90002],
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.blue500,
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(
          color: appTheme.indigo800.withOpacity(0.19),
          width: 0.h,
        ),
      );
  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                border: Border.all(
                  color: appTheme.gray100,
                  width: 0.h,
                ),
                // borderRadius: BorderRadius.circular(22.h),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
