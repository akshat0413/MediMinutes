import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/routes/app_routes.dart';
import '../offer_zone_screen/offer_zone_screen.dart';
import '../permission_to_access_dialog/controller/permission_to_access_controller.dart';
import '../permission_to_access_dialog/permission_to_acces_dialog.dart';
import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFf),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "AppNavigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "Check your app's UI from the bellow demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Home Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sreach Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profilr screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "SignUp Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Testing Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.testingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Buy Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.buyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Buy Screen2",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.buyScreen2),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Empty Cart",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartScreenEmpty),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart2",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartScreen2),
                        ),
                        _buildScreenTitle(
                          screenTitle: "PaymentOptionsScreen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentOptionsScreen),
                        ),
                        // _buildScreenTitle(
                        //   screenTitle: "Order Completed",
                        //   onTapScreenTitle: () =>
                        //       onTapScreenTitle(AppRoutes.orderCompletedScreen),
                        // ),
                        // _buildScreenTitle(
                        //   screenTitle: "Order Cancelled",
                        //   onTapScreenTitle: () =>
                        //       onTapScreenTitle(AppRoutes.OrderCancelledScreen),
                        // ),
                        // _buildScreenTitle(
                        //   screenTitle: "Order Delivered",
                        //   onTapScreenTitle: () =>
                        //       onTapScreenTitle(AppRoutes.orderDeliveredScreen),
                        // ),
                        // _buildScreenTitle(
                        //   screenTitle: "My Order Search",
                        //   onTapScreenTitle: () =>
                        //       onTapScreenTitle(AppRoutes.myOrderSearchScreen),
                        // ),
                        // _buildScreenTitle(
                        //   screenTitle: "Edit Address",
                        //   onTapScreenTitle: () =>
                        //       onTapScreenTitle(AppRoutes.editAddressScreen),
                        // ),
                        // _buildScreenTitle(
                        //   screenTitle: "Selecting Address",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       AppRoutes.SelectingAddressScreen),
                        // ),
                        _buildScreenTitle(
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.spleshscreenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Offer Zone Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.offerZoneScreen),
                        ),
                        // _buildScreenTitle(
                        //   screenTitle: "Sign Up Screen",
                        //   onTapScreenTitle: () =>
                        //       onTapScreenTitle(AppRoutes.signUpPageScreen),
                        // ),
                        // _buildScreenTitle(
                        //   screenTitle: "Permission to Acccess - Dialog",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //     context,
                        //     PermissionToAccessController(),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// COmmon click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// COMMON  click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
