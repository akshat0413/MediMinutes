import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/cart_screen/cart_screen_empty.dart';
import 'package:mediminutes/presentation/home_screen/home_initial_page.dart';
import 'package:mediminutes/routes/app_routes.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_nav_bar.dart';
import '../profile/profile_screen.dart';
import 'controller/home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.homeInitialPage,
          onGenerateRoute: (routeSetting) => GetPageRoute(
            page: () => getCurrentPage(routeSetting.name!),
            transition: Transition.noTransition,
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation() {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomNavBar(
        onChanged: (BottomNavBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
      ),
    );
  }

  /// Common widget
  Widget _buildRowplayThree({
    required String titleText,
    required String durationOne,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPlay,
          height: 6.h,
          width: 6.h,
          margin: EdgeInsets.only(top: 2.h),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              titleText,
              style: CustomTextStyles.bodySmallMontserratBlack90001.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.h),
          child: Text(
            durationOne,
            style: CustomTextStyles.bodySmallMontserratBlueGray40001.copyWith(
              color: appTheme.blueGray40001,
            ),
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomNavBarEnum type) {
    switch (type) {
      case BottomNavBarEnum.Home:
        return AppRoutes.homeInitialPage;
      case BottomNavBarEnum.Wallet:
        return "/";
      case BottomNavBarEnum.Services:
        return "/";
      case BottomNavBarEnum.Cart:
        return AppRoutes.cartScreenEmpty;
      case BottomNavBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeInitialPage:
        return HomeInitialPage();
      case AppRoutes.cartScreenEmpty:
        return CartScreenEmpty();
      case AppRoutes.profileScreen:
        return ProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
