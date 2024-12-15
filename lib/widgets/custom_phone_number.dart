import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/utils/utils.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {Key? key,
      required this.country,
      required this.onTap,
      required this.controller})
      : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(
          10.h,
        ),
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray3003D,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 14.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: appTheme.blueGray50,
                  width: 1.h,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: CountryPickerUtils.getDefaultFlagImage(
                      country,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownGray600041,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 200.h,
              margin: EdgeInsets.only(left: 10.h),
              child: TextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: controller,
                style: CustomTextStyles.bodyMediumOpenSansGray500,
                decoration: InputDecoration(
                  hintText: 'lbl_91_**********'.tr,
                  hintStyle: CustomTextStyles.bodyMediumOpenSansGray500,
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 12.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          )
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: "search....",
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text(
            'Select your phone code',
            style: TextStyle(fontSize: 14.fSize),
          ),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
