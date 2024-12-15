import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mediminutes/widgets/app_bar/appbar_title.dart';
import 'package:mediminutes/widgets/app_bar/custom_app_bar.dart';
import 'package:mediminutes/widgets/custom_elevated_button.dart';
import 'package:mediminutes/widgets/custom_outlined_button.dart';

import '../../widgets/app_bar/appbar_subtitle_three.dart';
import 'controller/order_place_controller.dart';

class ProfileScreen extends GetWidget<ProfileScreenController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildUserProfileSection(),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 20.h),
                child: Column(
                  children: [
                    _buildOrdersSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildPaymentMethodSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildAddressManagementSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildPrescriptionSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildMediCoinSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildMedicineReminderSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildNotificationSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildWishlistSection(),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        //indent: 22.h,
                        color: Color(0XFFEEEEDD),
                        thickness: 8,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildFaqsSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildCustomerSupportSection(),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 22.h,
                        color: const Color.fromARGB(255, 216, 214, 214),
                        thickness: 1.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    _buildPolicyAndSignoutSection(),
                    SizedBox(height: 8.h),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    ));
  }

  /// Section Widget
  Widget _buildUserProfileSection() {
    return Container(
      height: 150.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [appTheme.green20001, Colors.white])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.h),
                child: Text("lbl_hey_anwesha".tr,
                    style: TextStyle(
                        wordSpacing: 0.00005,
                        color: Colors.black,
                        fontSize: 19.fSize,
                        fontWeight:
                            FontWeight.bold) //TextStyle(color: Colors.black.),
                    ),
              ),
              SizedBox(
                width: 85.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5.h,
                ),
                child: Text("lbl_edit_profile".tr,
                    style: TextStyle(
                        fontSize: 14.fSize,
                        color: Color(0XFF19543E),
                        fontWeight:
                            FontWeight.bold) //TextStyle(color: Colors.black.),
                    ),
              ),
              SizedBox(
                width: 4.h,
              ),
              Icon(
                Icons.arrow_circle_right_rounded,
                size: 20.h,
                color: const Color.fromARGB(255, 70, 136, 72),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Text("lbl_95********".tr),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              //indent: 22.h,
              color: const Color.fromARGB(255, 102, 102, 101).withOpacity(0.1),
              thickness: 1,
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 45.h,
                  width: 182.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Text(
                        "lbl_mediminutes".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.fSize,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF19543E)),
                        //style: CustomTextStyles.titleLargeTeal900,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgXboxCross,
                          height: 25.h,
                          width: 75.h,
                          alignment: Alignment.topRight,
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Define the action when the button is tapped
                    print("Image Button Tapped!");
                  },
                  child: CustomImageView(
                    height: 25.h,
                    imagePath: ImageConstant.imgJoinNow,
                  ),
                )
                // TextButton(
                //   onPressed: () {
                //     // Add your action here
                //   },
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.brown, // Text color
                //     side: BorderSide(
                //         color: Colors.brown,
                //         width: 2.5), // Border color and width
                //     shape: RoundedRectangleBorder(
                //       borderRadius:
                //           BorderRadius.circular(20), // Rounded corners
                //     ),
                //     // padding: EdgeInsets.only(
                //     //     left: 4.h,
                //     //     //top: 2.h,
                //     //     // bottom: 2.h,
                //     //     right: 4.h), // Button padding
                //   ),
                //   child: Text(
                //     'Join now',
                //     style: TextStyle(
                //         fontWeight: FontWeight.bold, fontSize: 10.fSize),
                //   ),
                // )
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );

    // return SizedBox(
    //   height: 158.h,
    //   width: double.maxFinite,
    //   child: Stack(
    //     children: [
    //       Container(
    //         width: double.maxFinite,
    //         padding: EdgeInsets.symmetric(vertical: 14.h),
    //         decoration: BoxDecoration(
    //           // gradient: LinearGradient(
    //           //     begin: Alignment(0.5, 0),
    //           //     end: Alignment(0.5, 1),
    //           //     colors: [
    //           //       appTheme.green20001.withOpacity(0.43),
    //           //       appTheme.gray1006d
    //           //       //   Color(0X6DADCCA3),
    //           //     ]),
    //           color: Color(0X6DADCCA3),
    //           //theme.colorScheme.primary,
    //          ),
    //         child: Padding(
    //           padding: EdgeInsets.only(left: 7.h),
    //           child: Column(
    //             mainAxisSize: MainAxisSize.max,
    //             children: [
    //               CustomAppBar(
    //                 height: 62.h,
    //                 shape: Border(
    //                   bottom: BorderSide(
    //                     color: appTheme.green20001.withOpacity(0.43),
    //                     width: 1.h,
    //                   ),
    //                 ),
    //                 title: Padding(
    //                   padding: EdgeInsets.only(left: 12.h),
    //                   child: Column(
    //                     children: [
    //                       AppbarTitle(
    //                         text: "lbl_hey_anwesha".tr,
    //                         margin: EdgeInsets.only(right: 91.h),
    //                       ),
    //                       AppbarSubTitleTwo(
    //                         text: "lbl_95********".tr,
    //                         margin: EdgeInsets.only(right: 45.h),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 actions: [
    //                   Row(
    //                     children: [
    //                       AppbarSubTitleOne(
    //                         text: "lbl_edit_profile".tr,
    //                         margin: EdgeInsets.only(right: 5.h),
    //                       ),
    //                       Padding(
    //                         padding: EdgeInsets.only(right: 15.h),
    //                         child: Icon(
    //                           Icons.arrow_circle_right_rounded,
    //                           color: const Color.fromARGB(255, 70, 136, 72),
    //                         ),
    //                       ),
    //                     ],
    //                   )
    //                 ],
    //                 styleType: Style.bgFillGreen20001,
    //               ),
    //               SizedBox(
    //                 height: 2.h,
    //               ),
    //               Divider(
    //                 color: Colors.grey,
    //                 thickness: 0.3,
    //               ),
    //               Container(
    //                 width: double.maxFinite,
    //                 margin: EdgeInsets.only(
    //                   left: 10.h,
    //                   right: 20.h,
    //                 ),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     SizedBox(
    //                       height: 45.h,
    //                       width: 182.h,
    //                       child: Stack(
    //                         alignment: Alignment.bottomLeft,
    //                         children: [
    //                           Text(
    //                             "lbl_mediminutes".tr,
    //                             textAlign: TextAlign.center,
    //                             style: TextStyle(
    //                                 fontSize: 20.fSize,
    //                                 fontWeight: FontWeight.bold),
    //                             //style: CustomTextStyles.titleLargeTeal900,
    //                           ),
    //                           Padding(
    //                             padding: EdgeInsets.all(5.0),
    //                             child: CustomImageView(
    //                               imagePath: ImageConstant.imgXboxCross,
    //                               height: 25.h,
    //                               width: 75.h,
    //                               alignment: Alignment.topRight,
    //                             ),
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                     CustomOutlinedButton(
    //                       width: 80.h,
    //                       text: "lbl_join_now".tr,
    //                       margin: EdgeInsets.only(bottom: 4.h),
    //                       buttonStyle:
    //                           CustomButtonStyles.outlineOnSecondaryConatiner,
    //                       alignment: Alignment.bottomCenter,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 16.h,
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

  /// Widget Section
  Widget _buildOrdersSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgshopaholic,
                height: 35.h,
                width: 49.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_my_orders".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildPaymentMethodSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCardPayment,
                height: 27.h,
                width: 49.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "msg_manage_payment_methods".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildAddressManagementSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDelivery,
                height: 40.h,
                width: 54.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_manage_address".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildPrescriptionSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTreatment,
                height: 40.h,
                width: 54.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_my_prescription".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildMediCoinSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCoinWallet,
                height: 40.h,
                width: 54.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_medi_coin".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildMedicineReminderSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMedicineReminder,
                height: 40.h,
                width: 54.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_medicine_reminder".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildNotificationSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMegaphone,
                height: 40.h,
                width: 54.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_my_notification".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildWishlistSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHeartWithPulse,
                height: 30.h,
                width: 48.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "lbl_my_wishlist".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildFaqsSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFaq,
                height: 45.h,
                width: 54.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_faq".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildCustomerSupportSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgOnlineSupport,
                height: 40.h,
                width: 54.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "msg_custom_support".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget Section
  Widget _buildPolicyAndSignoutSection() {
    return InkWell(
      onTap: () {
        // Add your onTap logic here
        print("Orders section tapped!");
      },
      child: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTermsAndConditions,
                      height: 40.h,
                      width: 54.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "lbl_policy".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20.h),
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60.h),
            CustomElevatedButton(
              text: "lbl_sign_out".tr,
              margin: EdgeInsets.only(left: 30.h, right: 28.h),
              buttonStyle: CustomButtonStyles.fillGreen,
              buttonTextStyle: theme.textTheme.titleMedium!,
            )
          ],
        ),
      ),
    );
  }
}
