import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/widgets/custom_search_view.dart';

class AppbarTitleSearchview extends StatelessWidget {
  const AppbarTitleSearchview(
      {Key? key, this.hintText, this.controller, this.margin})
      : super(
          key: key,
        );

  final String? hintText;

  final TextEditingController? controller;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: double.maxFinite,
        child: CustomSearchView(
          controller: controller,
          hintText: "Mediminutes Pharmacy",
          contentPadding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 5.h,
          ),
        ),
      ),
    );
  }
}
