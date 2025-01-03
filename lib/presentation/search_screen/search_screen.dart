import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/search_screen/search_screen_tab_page.dart';
import 'package:mediminutes/presentation/search_screen/search_screen_tab_page2.dart';
import 'package:mediminutes/widgets/app_bar/appbar_title.dart';
import 'package:mediminutes/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/app_bar/appbar_title_searchview.dart';
import 'controller/search_screen_controller.dart';

class SearchScreen extends GetWidget<SearchScreenController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: _buildAppBar(),
              ),
              SizedBox(
                height: 12.h,
              ),
              _buildTabview(),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: Color(0XFFADCCA3),
                  thickness: 0.2.h,
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      SearchScreenTabPage(),
                      SearchScreenTabPage2(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///Section Widget
  Widget _buildAppBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 8.h,
        right: 10.h,
        top: 10.h,
      ),
      width: double.maxFinite,
      child: CustomAppBar(
        height: 44.h,
        title: SizedBox(
          width: double.maxFinite,
          child: AppbarTitleSearchview(
            margin: EdgeInsets.only(right: 5.h, left: 5.h),
            hintText: "Mediminutes_pharmacy",
            controller: controller.searchScreenController,
          ),
        ),
        styleType: Style.bgOutlineBluegray100,
      ),
    );
  }

  Widget _buildTabview() {
    return TabBar(
      controller: controller.tabviewController,
      labelPadding: EdgeInsets.zero,
      indicatorWeight: 5.0, // Increase the thickness of the indicator
      indicatorColor:
          Color(0XFF19543E), // Green color for selected tab indicator
      labelStyle: TextStyle(
        color: Color(0XFF19543E), // Text color for the selected tab
        fontWeight: FontWeight.bold, // Optional: Make the text bold
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.black, // Text color for the unselected tab
      ),
      tabs: [
        _buildTab("Pharmacy"),
        _buildTab("Medicine"),
      ],
    );
  }

  Widget _buildTab(String title) {
    return Tab(
      child: SizedBox(
        width: 108.h,
        height: 30.h,
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18.fSize),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}
