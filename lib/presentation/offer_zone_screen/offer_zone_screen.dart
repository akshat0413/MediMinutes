import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/offer_zone_screen/models/categoryitems_item_model.dart';
import 'package:mediminutes/presentation/offer_zone_screen/models/productgrid_item_model.dart';
import 'package:mediminutes/presentation/offer_zone_screen/widgets/categoryitems_item_widget.dart';
import 'package:mediminutes/presentation/offer_zone_screen/widgets/productgrid_item_widget.dart';
import 'package:mediminutes/widgets/app_bar/appbar_leading_image.dart';
import 'package:mediminutes/widgets/app_bar/appbar_title.dart';
import 'package:mediminutes/widgets/app_bar/custom_app_bar.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import 'controller/offer_zone_controller.dart';

class OfferZoneScreen extends GetWidget<OfferZoneController> {
  const OfferZoneScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildHeader(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 18.h,
            top: 10.h,
            right: 18.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildCategoriesSection(),
              SizedBox(
                height: 12.h,
              ),
              _buildProductGrid(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildHeader() {
    return CustomAppBar(
      styleType: Style.whiteA70001,
      leadingWidth: 70.h,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.reply,
          color: Color(0XFF19543E),
          size: 28.h,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_offer_zone".tr,
      ),
    );
  }

  ///section widget
  Widget _buildCategoriesSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "lbl_categories".tr,
                    style: CustomTextStyles.titleMediumSemiBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            child: Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    controller.offerZoneModelObj.value.categoryitemsItemList
                        .value.length,
                    (index) {
                      if (index >=
                          controller.offerZoneModelObj.value
                              .categoryitemsItemList.value.length) {
                        return SizedBox();
                      }
                      CategoryitemsItemModel model = controller
                          .offerZoneModelObj
                          .value
                          .categoryitemsItemList
                          .value[index];
                      return Padding(
                        padding: EdgeInsets.only(right: 15.h),
                        child: SizedBox(
                          width: 100.h,
                          child: CategoryitemsItemWidget(
                            model,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            "lbl_all_products".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          )
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    return Expanded(
      child: Obx(
        () => ResponsiveGridListBuilder(
          minItemWidth: 1,
          minItemsPerRow: 2,
          maxItemsPerRow: 2,
          horizontalGridSpacing: 16.h,
          verticalGridSpacing: 16.h,
          builder: (context, items) => ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            children: items,
          ),
          gridItems: List.generate(
            controller.offerZoneModelObj.value.productgrifItemList.value.length,
            (index) {
              ProductgridItemModel model = controller
                  .offerZoneModelObj.value.productgrifItemList.value[index];
              return ProductgridItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  ///Navigatation to the preivious screen
  onTapArrowleftone() {
    Get.back();
  }
}
