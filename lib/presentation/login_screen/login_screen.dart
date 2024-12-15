import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/login_screen/controller/login_controller.dart';
import 'package:mediminutes/routes/app_routes.dart';
import 'package:mediminutes/widgets/custom_icon_button.dart';
import 'package:mediminutes/widgets/custom_text_form_field.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/googleauth/google_auth_helper.dart';

// ignore: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
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
                    _buildHeaderSection(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 124.h),
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
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color:
                                    //         appTheme.indigo800.withOpacity(0.15),
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
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: double.maxFinite,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 42.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFacebookOnprimearycontainer,
                                              height: 46.h,
                                              width: 50.h,
                                            ),
                                            CustomIconButton(
                                              height: 46.h,
                                              width: 50.h,
                                              decoration:
                                                  IconButtonStyleHelper.none,
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgApple,
                                                height: 46.h,
                                                width: 50.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGoogle,
                                              height: 46.h,
                                              width: 50.h,
                                              onTap: () {
                                                onTapImgGoogleone();
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24.h,
                                      ),
                                      SizedBox(
                                        width: double.maxFinite,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Divider(
                                                color: appTheme.blueGray50,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 16.h,
                                            ),
                                            Text(
                                              "lbl_or_login_with".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray60001,
                                            ),
                                            SizedBox(
                                              width: 16.h,
                                            ),
                                            Expanded(
                                              child: Divider(
                                                color: appTheme.blueGray50,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 22.h,
                                      ),
                                      CustomTextFormField(
                                        controller:
                                            controller.mobileNumberController,
                                        hintText: "msg_enter_your_mobile2".tr,
                                        hintStyle: CustomTextStyles
                                            .bodySmallOpenSansGray500,
                                        textInputType: TextInputType.phone,
                                        suffix: Padding(
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: Text(
                                            "lbl_send_otp".tr,
                                            style: TextStyle(
                                              color: theme.colorScheme.primary,
                                              fontSize: 12.fSize,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        suffixConstraints: BoxConstraints(
                                          maxHeight: 46.h,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.h,
                                          vertical: 12.h,
                                        ),
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "err_msg_please_enter_valid_phone_number"
                                                .tr;
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      CustomTextFormField(
                                        controller:
                                            controller.inputareaoneController,
                                        hintText: "msg_enter_6_digit_otp".tr,
                                        hintStyle: CustomTextStyles
                                            .labelLargeOpenSansGray50003,
                                        textInputAction: TextInputAction.done,
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.h,
                                          vertical: 12.h,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6.h,
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        margin: EdgeInsets.only(
                                          left: 16.h,
                                          right: 4.h,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 92.h,
                                              child: Text(
                                                "msg_didn_t_get_the_code".tr,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallOpenSansGray50010,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 60.h,
                                              child: Text(
                                                'lbl_resend_code'.tr,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelMediumOpenSansPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 34.h,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          //Get.toNamed(AppRoutes.homeScreen);
                                          Get.toNamed(AppRoutes.homeScreen);
                                          // Define your button's action here
                                        },
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor:
                                              theme.colorScheme.onPrimary,
                                          backgroundColor:
                                              theme.colorScheme.primary,
                                          minimumSize: Size(double.infinity,
                                              48.h), // Text color when the button is pressed
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10.h), // Rounded corners
                                          ),
                                          elevation:
                                              4, // Button elevation for the shadow
                                        ),
                                        child: Text(
                                          "lbl_log_in".tr,
                                          style: CustomTextStyles
                                              .titleSmallBlack90001, // Text style
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "msg_don_t_have_an_account".tr,
                                            style: CustomTextStyles
                                                .bodySmallOpenSansGray60001,
                                          ),
                                          SizedBox(
                                            width: 6.h,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Get.toNamed(
                                                  AppRoutes.signupScreen);
                                            },
                                            child: Text(
                                              "lbl_sign_up".tr,
                                              style: CustomTextStyles
                                                  .labelLargeOpenSansPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      )
                                    ],
                                  ),
                                ),
                              ))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    ));
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 34.h,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogo,
                        height: 44.h,
                        width: 50.h,
                      ),
                      SizedBox(
                        width: 4.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_medi".tr,
                                style: theme.textTheme.headlineLarge,
                              ),
                              TextSpan(
                                text: "lbl_minutes".tr,
                                style: theme.textTheme.headlineLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "msg_sign_in_to_your".tr,
                    style: CustomTextStyles.headlineSmallGray90006,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "msg_enter_your_mobile".tr,
                    style: CustomTextStyles.labelLargeInterGray90006,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130.h,
            )
          ],
        ),
      ),
    );
  }

  onTapImgGoogleone() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
