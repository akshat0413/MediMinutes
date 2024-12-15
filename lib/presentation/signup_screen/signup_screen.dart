import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/home_screen/home_screen.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/signup_controller.dart';

// ignore: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  SignupScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 768.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildHeader(),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 62.h),
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    elevation: 10,
                                    child: Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.all(24.h),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: appTheme.indigo800
                                        //         .withOpacity(0.15),
                                        //     spreadRadius: 2.h,
                                        //     blurRadius: 2.h,
                                        //     offset: Offset(
                                        //       -4,
                                        //       24.27,
                                        //     ),
                                        //   ),
                                        // ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Row(
                                              children: [
                                                _buildFirstNameInput(),
                                                SizedBox(
                                                  width: 16.h,
                                                ),
                                                _buildSecondNameInput(),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          _buildEmailInput(),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          _buildDOBInput(),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: _buildPhoneNumber(),
                                          ),
                                          SizedBox(
                                            height: 16.h,
                                          ),
                                          _buildOtpInput(),
                                          SizedBox(
                                            height: 24.h,
                                          ),
                                          _buildProceedButton(),
                                          SizedBox(
                                            height: 24.h,
                                          ),
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 6.h),
                                                    child: Divider(
                                                      color:
                                                          appTheme.blueGray50,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 16.h,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "lbl_or",
                                                    style: CustomTextStyles
                                                        .bodySmallGray60001,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 16.h,
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 6.h),
                                                    child: Divider(
                                                      color:
                                                          appTheme.blueGray50,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 22.h,
                                          ),
                                          Container(
                                            width: double.maxFinite,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 42.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFacebookOnprimearycontainer,
                                                  height: 46.h,
                                                  width: 50.h,
                                                ),
                                                CustomIconButton(
                                                  height: 50.h,
                                                  width: 54.h,
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .none,
                                                  child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgApple,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGoogle,
                                                  height: 42.h,
                                                  width: 48.h,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  ///Section Widget
  Widget _buildHeader() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 30.h,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadiusStyle.customBorderBL16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 6.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogo,
                        height: 32.h,
                        width: 38.h,
                      ),
                      SizedBox(
                        width: 2.h,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_medi".tr,
                              style: CustomTextStyles.titleLargeOpenSansBold,
                            ),
                            TextSpan(
                              text: "lbl_minutes".tr,
                              style: CustomTextStyles.titleLargeOpenSansBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    "msg_sign_up_to_your".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "msg_enter_your_mobile".tr,
                    style: CustomTextStyles.labelLargeInter,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 170.h,
            ),
          ],
        ),
      ),
    );
  }

  ///section Widget
  Widget _buildFirstNameInput() {
    return Expanded(
      child: CustomTextFormField(
        controller: controller.firstNameInputController,
        hintText: "lbl_first_name".tr,
        hintStyle: CustomTextStyles.bodySmallOpenSansGray500,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 12.h,
        ),
        validator: (Value) {
          if (!isText(Value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  ///section Widget
  Widget _buildSecondNameInput() {
    return Expanded(
      child: CustomTextFormField(
        controller: controller.firstNameInputController,
        hintText: "lbl_second_name".tr,
        hintStyle: CustomTextStyles.labelLargeInterGray500,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 12.h,
        ),
        validator: (Value) {
          if (!isText(Value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  ///section Widget
  Widget _buildEmailInput() {
    return SizedBox(
      height: 50.h, // Set an appropriate height
      child: CustomTextFormField(
        controller: controller.firstNameInputController,
        hintText: "msg_*******_gmail_com".tr,
        hintStyle: CustomTextStyles.titleSmallGray500,
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 12.h,
        ),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  ///section Widget
  Widget _buildDOBInput() {
    return Flexible(
      child: CustomTextFormField(
        controller: controller.firstNameInputController,
        hintText: "lbl_18_03_2024".tr,
        hintStyle: CustomTextStyles.titleSmallGray500,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 12.h, 14.h, 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgCalendarBlueGray200,
            height: 18.h,
            width: 16.h,
            fit: BoxFit.contain,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 46.h,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 12.h,
        ),
        onTap: () {
          onTapDateInput();
        },
      ),
    );
  }

  ///section Widget
  Widget _buildPhoneNumber() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => CustomPhoneNumber(
          country: controller.selectedCountry.value,
          controller: controller.phoneNumberController,
          onTap: (Country value) {
            controller.selectedCountry.value = value;
          },
        ),
      ),
    );
  }

  Widget _buildOtpInput() {
    return CustomTextFormField(
      controller: controller.otpInputController,
      hintText: "lbl_enter_6_digit_otp".tr,
      hintStyle: CustomTextStyles.titleSmallGray50003,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.h,
      ),
    );
  }

  /// section Widget
  Widget _buildProceedButton() {
    return ElevatedButton(
      onPressed: () {
        Get.off(() => HomeScreen());
        // Define your onPressed action here
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: CustomTextStyles.titleSmallBlack90001.color,
        padding:
            EdgeInsets.symmetric(vertical: 25.h, horizontal: 40), // Text color
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10), // Border radius for rounded corners
        ),
        elevation: 4, // Shadow/elevation for the button
      ),
      child: Text(
        "lbl_proceed".tr, // Text to be displayed
        style: CustomTextStyles.titleSmallBlack90001, // Custom text style
      ),
    );
  }

  Future<void> onTapDateInput() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.signupModelobj.value.selecteDOBInput!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.signupModelobj.value.selecteDOBInput!.value = dateTime;
      controller.dobInputController.text = dateTime.format(pattern: D_M_Y);
    }
  }
}
