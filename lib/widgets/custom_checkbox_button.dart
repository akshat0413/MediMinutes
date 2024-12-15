import 'package:flutter/material.dart';
import 'package:mediminutes/theme/custom_text_style.dart';
import '../core/app_export.dart';

class CustomCheckboxButton extends StatelessWidget {
  CustomCheckboxButton(
      {Key? key,
      required this.onChange,
      this.decoration,
      this.alignment,
      this.isRightCheck,
      this.iconSize,
      this.value,
      this.text,
      this.width,
      this.padding,
      this.textStyle,
      this.overflow,
      this.textAlignment,
      this.isExpendedText = false})
      : super(
          key: key,
        );

  final BoxDecoration? decoration;

  final Alignment? alignment;

  final bool? isRightCheck;

  final double? iconSize;

  bool? value;

  final Function(bool) onChange;

  final String? text;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final TextStyle? textStyle;

  final TextOverflow? overflow;

  final TextAlign? textAlignment;

  final bool isExpendedText;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildCheckBoxWidget)
        : buildCheckBoxWidget;
  }

  Widget get buildCheckBoxWidget => GestureDetector(
        onTap: () {
          value = !(value!);
          onChange(value!);
        },
        child: Container(
          decoration: decoration,
          width: width,
          padding: padding,
          child: (isRightCheck ?? false) ? rightSideCheckbox : leftSideCheckbox,
        ),
      );

  Widget get leftSideCheckbox => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildCheckBoxWidget,
          SizedBox(
            width: text != null && text!.isNotEmpty ? 8 : 0,
          ),
          isExpendedText ? Expanded(child: textWidget) : textWidget
        ],
      );

  Widget get rightSideCheckbox => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isExpendedText ? Expanded(child: textWidget) : textWidget,
          SizedBox(
            width: text != null && text!.isNotEmpty ? 8 : 0,
          ),
          CheckboxWidget
        ],
      );

  Widget get textWidget => Text(
        text ?? "",
        textAlign: textAlignment ?? TextAlign.start,
        overflow: overflow,
        style: textStyle ?? CustomTextStyles.bodyLarge18,
      );

  Widget get CheckboxWidget => SizedBox(
        height: iconSize ?? 26.h,
        width: iconSize ?? 26.h,
        child: Checkbox(
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          value: value ?? false,
          checkColor: theme.colorScheme.primary,
          activeColor: appTheme.gray30001,
          side: WidgetStateBorderSide.resolveWith(
            (states) => BorderSide(
              color: appTheme.gray30001,
            ),
          ),
          onChanged: (Value) {
            onChange(Value!);
          },
        ),
      );
}
