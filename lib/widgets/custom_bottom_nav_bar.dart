import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/app_navigation_Screen/app_navigation_screen.dart';
import '../core/app_export.dart';

enum BottomNavBarEnum { Home, Wallet, Services, Cart, Profile }

RxBool isBlinking = false.obs; // Reactive variable for blinking

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({Key? key, this.onChanged})
      : super(
          key: key,
        );

  RxInt SelectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomNavBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavWallet,
      activeIcon: ImageConstant.imgNavWallet,
      title: "lbl_wallet".tr,
      type: BottomNavBarEnum.Wallet,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPlus,
      activeIcon: ImageConstant.imgPlus,
      title: "lbl_services".tr,
      type: BottomNavBarEnum.Services,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCard,
      activeIcon: ImageConstant.imgNavCard,
      title: "lbl_cart".tr,
      type: BottomNavBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "lbl_profile".tr,
      type: BottomNavBarEnum.Profile,
    ),
  ];

  Function(BottomNavBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFF5F6F7),
        borderRadius: BorderRadius.circular(
          25.h,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: SelectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            if (bottomMenuList[index].isCircle) {
              return BottomNavigationBarItem(
                icon: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //   Center(
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       // Action when button is tapped
                    //       print("Button Tapped");
                    //     },
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         color: Colors.green, // Green background color
                    //         border: Border.all(
                    //           color: Colors.white, // Thin white border
                    //           width: 2.0, // Border width
                    //         ),
                    //       ),
                    //       padding: EdgeInsets.all(16.0), // Adjust padding for size
                    //       child: CustomImageView(imagePath: ImageConstant.imgPlus, // Path to your image asset

                    //       ),
                    //     ),
                    //   ),
                    // ),
                    GestureDetector(
                      onTap: () {
                        SelectedIndex.value = index;
                        isBlinking.value = true;
                        onChanged?.call(bottomMenuList[index].type);
                      },
                      child: Column(
                        children: [
                          Obx(
                            () {
                              return AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  decoration: BoxDecoration(
                                    color: isBlinking.value &&
                                            SelectedIndex.value == index
                                        ? Colors.greenAccent.withOpacity(0.4)
                                        : Colors.transparent,
                                    shape: BoxShape.circle,
                                  ));
                            },
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              width: 60.h, // Adjust dimensions
                              height: 60.h, // Adjust dimensions
                              decoration: BoxDecoration(
                                color: Color(0XFFC7F4C2),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0XFFFFFFFF),
                                  width: 3.h,
                                ),
                              ),
                              child: Center(
                                child: CustomImageView(
                                  imagePath: bottomMenuList[index].icon,
                                  height: 64.h, // Icon dimensions
                                  width: 64.h, // Icon dimensions
                                  color: Color(0XFF828282),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h), // Adjust spacing
                    Text(
                      bottomMenuList[index].title ?? "",
                      style: TextStyle(
                        color: Color(0XFF828282),
                        fontSize: 12.fSize,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                label: '',
              );
            }

            return BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 22.h,
                    width: 22.h,
                    color: Color(0XFF828282),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargePlusJakartaSansGray60002
                        .copyWith(
                      color: Color(0XFF828282),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 22.h,
                    width: 22.h,
                    color: Color(0XFF828282),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargePlusJakartaSansGray60002
                        .copyWith(
                      color: Color(0XFF828282),
                    ),
                  ),
                ],
              ),
              label: ',',
            );
          }),
          onTap: (index) {
            SelectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type,
      this.isCircle = false});

  String icon;

  String activeIcon;

  String? title;

  BottomNavBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "please replace the erespective Widget here",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
