import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/buy_screen/buy_binding/buy_binding.dart';
import 'package:mediminutes/presentation/buy_screen/buy_screen2.dart';
import 'package:mediminutes/presentation/cart_screen/binding/cart_binding.dart';
import 'package:mediminutes/presentation/cart_screen/cart_screen2.dart';
import 'package:mediminutes/presentation/cart_screen/cart_screen_empty.dart';
import 'package:mediminutes/widgets/custom_elevated_button.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../cart_screen/cart_screen.dart';
import 'buy_controller/buy_controller.dart';

class BuyScreen extends GetWidget<BuyController> {
  BuyScreen({Key? key})
      : super(
          key: key,
        );
  var isFavorite = false.obs; // Observable variable for favorite state

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: _buildHeader(),
          body: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    SizedBox(height: 35.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Card(
                              elevation: 1,
                              child: Container(
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgBuyParacetamol3,
                                  height: 200.h,
                                  radius: BorderRadius.circular(20.h),
                                  // width: double.maxFinite,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 6.h,
                            ),
                            Card(
                              elevation: 1,
                              child: Container(
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgBuyParacetamol2,
                                  height: 200.h,
                                  radius: BorderRadius.circular(20.h),
                                  // width: double.maxFinite,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 6.h,
                            ),
                            Card(
                              elevation: 1,
                              child: Container(
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgBuyParacetamol,
                                  height: 200.h,
                                  radius: BorderRadius.circular(20.h),
                                  // width: double.maxFinite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildProductTitle(),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildProductDetail(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildSafetyAdvice(),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildSubstitutes(),
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 210.h,
            child: Column(
              children: [
                _buildPriceOffer(),
                _buildActionButtons(),
              ],
            ),
          )
          // : SizedBox(
          //     height: 210.h,
          //     child: Column(
          //       children: [
          //         Text('No offers available', style: TextStyle(fontSize: 18)),
          //         Icon(Icons.info_outline, color: Colors.red),
          //       ],
          //     ),
          //   ),
          ),
    );
  }

  ///Section Widget
  PreferredSize _buildHeader() {
    final SearchController searchController = Get.put(SearchController());

    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Obx(() {
        return CustomAppBar(
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
          // leading: AppbarLeadingImage(
          //   imagePath: ImageConstant.imgArrowLeftblack90001,
          //   onTap: () {
          //     onTapArrowleftone();
          //   },
          // ),
          title: searchController.isSearchActive.value
              ? Expanded(
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (query) {
                      onSearchSubmitted(query);
                    },
                  ),
                )
              : AppbarTitle(
                  text: "".tr,
                ),
          styleType: Style.whiteA70001,
          actions: [
            IconButton(
              icon: Icon(
                searchController.isSearchActive.value
                    ? Icons.close
                    : Icons.search,
                color: Color(0XFF19543E),
              ),
              onPressed: () {
                searchController.toggleSearch();
              },
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Color(0XFF19543E),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0XFF19543E),
              ),
              onPressed: () {
                Get.to(CartScreen2(), binding: CartBinding());
              },
            ),
          ],
        );
      }),
    );
  }

  Widget _buildProductTitle() {
    final FavoriteController controller = Get.put(FavoriteController());
    final ValueNotifier<int> quantity = ValueNotifier<int>(0);
    final ValueNotifier<int> selectedOffer = ValueNotifier<int>(0);

    return SizedBox(
      width: double.infinity, // Use full available width
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Dolo 650 Tablet',
                  style: TextStyle(
                    fontSize: 17.fSize,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  selectionColor: Colors.black,
                ),
              ),
              Obx(() => IconButton(
                    onPressed: controller.toggleFavorite,
                    icon: Icon(
                      controller.isFavorite.value
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: Color(0XFF19543E),
                      size: 30.h,
                    ),
                  )),
            ],
          ),
          Text(
            'Micro Labs Ltd',
            style: CustomTextStyles.bodyMediumInterBluegray9000315_1,
            selectionColor: Colors.blueGrey,
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Text(
                'Composition',
                style: CustomTextStyles.bodyMediumInterBluegray9000315_1,
              ),
              SizedBox(width: 170.h),
              Text(
                '15 tablets',
                style: CustomTextStyles.bodyMediumInterBluegray9000315_1,
              ),
            ],
          ),
          Text(
            'Paracetamol(650mg)',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 30.h),
          SizedBox(
            width: 400.h,
            height: 45.h,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10.h),
                color: Color(0XFFEEEEDD),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgFlashOn,
                    height: 25.h,
                  ),
                  Text(
                    'Estimated Delivery Time: 10 mins '.tr,
                    style: TextStyle(color: Color(0XFF19543E)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0XFFADCCA3).withOpacity(1),
              ),
              color: appTheme.green20001,
            ),
            height: 110.h,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Row(
                    children: [
                      ValueListenableBuilder<int>(
                        valueListenable: selectedOffer,
                        builder: (context, selected, _) {
                          return Radio<int>(
                            value: 1,
                            activeColor: Color(0XFF19543E),
                            groupValue: selected,
                            onChanged: (value) {
                              selectedOffer.value = value!;
                            },
                          );
                        },
                      ),
                      Text(
                        "₹30",
                        style: TextStyle(
                            fontFamily: "inter",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.fSize),
                      ),
                      SizedBox(width: 10.h),
                      Text(
                        "MRP ₹33.76",
                        style: TextStyle(
                            fontFamily: "inter",
                            fontSize: 16.fSize,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: 10.h),
                      Text(
                        "11% off",
                        style: TextStyle(
                          fontSize: 16.fSize,
                          color: Color(0XFFEB2323),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color(0XFFADCCA3).withOpacity(1),
                  thickness: 1,
                ),
                Row(
                  children: [
                    ValueListenableBuilder<int>(
                      valueListenable: selectedOffer,
                      builder: (context, selected, _) {
                        return Radio<int>(
                          value: 2,
                          activeColor: Color(0XFF19543E),
                          groupValue: selected,
                          onChanged: (value) {
                            selectedOffer.value = value!;
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7.h),
                      child: Text(
                        "₹25",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "inter",
                            fontSize: 18.fSize),
                      ),
                    ),
                    SizedBox(width: 2.h),
                    Padding(
                      padding: EdgeInsets.only(top: 7.h),
                      child: Text(
                        "+ free shipping with",
                        style: TextStyle(
                          fontSize: 11.fSize,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 2.h),
                    SizedBox(
                      height: 25.h,
                      width: 121.h,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Text(
                          "lbl_mediminutes".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.fSize,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF19543E)),

                          //style: CustomTextStyles.titleLargeTeal900,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgXboxCross,
                          height: 17.h,
                          alignment: Alignment.topRight,
                        ),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerRight,
            child: Card(
              elevation: 8,
              shadowColor: Colors.grey,
              child: SizedBox(
                width: 100.h,
                height: 34.h,
                child: ValueListenableBuilder<int>(
                  valueListenable: quantity,
                  builder: (context, qty, _) {
                    return ValueListenableBuilder<int>(
                      valueListenable: selectedOffer,
                      builder: (context, selectedOfferValue, _) {
                        if (qty == 0) {
                          return ElevatedButton(
                            onPressed: () {
                              if (selectedOfferValue == 0) {
                                Get.snackbar('Alert',
                                    'Please select an offer before clicking ADD');
                              } else {
                                quantity.value = 1;
                              }
                            },
                            child: Text(
                              "ADD",
                              style: TextStyle(
                                fontSize: 15.fSize,
                                color: Color(0XFF19543E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                            ),
                          );
                        } else {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    size: 20.h,
                                    color: Color(0XFF19543E),
                                  ),
                                  onPressed: () {
                                    if (qty > 1) {
                                      quantity.value--;
                                    } else {
                                      quantity.value = 0;
                                    }
                                  },
                                ),
                              ),
                              Text(
                                '$qty',
                                style: TextStyle(
                                    fontSize: 16.fSize,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              IconButton(
                                icon: Icon(Icons.add,
                                    size: 20.h, color: Color(0XFF19543E)),
                                onPressed: () {
                                  quantity.value++;
                                },
                              ),
                            ],
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Section Widget
  Widget _buildProductDetail() {
    final List<String> safetyPoints = [
      "Follow the dosage prescribed by your doctor. Typically, it's taken 1 tablet every 4 to 6 hours, but do not exceed 4,000 mg (6 tablets) in 24 hours.",
      "You can take Dolo 650 with or without food. If you experience stomach upset, it's better to take it with food.",
      "Swallow the tablet with water; do not crush or chew it.",
      "Avoid consuming alcohol while taking this medicine, as it can increase the risk of liver damage.",
      "Leave a time gap of 4 hours between each dose of Dolo 650."
    ];
    final List<String> benefits = [
      "Relieves mild to moderate pain (such as headache, toothache, joint pain).",
      "Lowers fever and relieves the symptoms of cold or flu."
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Divider(
          thickness: 10,
          color: Color(0XFFEEEEDD).withOpacity(0.42),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.h),
          child: Text(
            "INTRODUCTION",
            style: TextStyle(
                fontSize: 16.fSize,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
            "Dolo 650 Tablet is a paracetamol-based medication commonly used to relieve pain and fever from headaches, migraines, toothaches, sore throats, menstrual cramps, arthritis, muscle aches, and the common cold. It was widely used during the COVID-19 pandemic.\n\nTake it as prescribed by your doctor, preferably with food to prevent stomach upset. Limit to four doses per day, ensuring a minimum 4-hour gap between doses.\n\nWhile generally safe, it may cause nausea, vomiting, or stomach pain in some cases. Avoid use if you have liver or kidney issues, allergies, or conflicting medications. Follow medical advice, using the lowest effective dose for the shortest time. Safe for use during pregnancy and breastfeeding. ",
            style: TextStyle(color: Colors.black, fontSize: 13)),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "USES",
          style: TextStyle(
              fontSize: 16.fSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 5.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: benefits.map((sentence) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• ", style: TextStyle(fontSize: 18)),
                Expanded(
                  child: Text(
                    sentence,
                    style: TextStyle(
                        color: Colors.black, fontSize: 14, fontFamily: 'inter'),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "DIRECTIONS",
          style: TextStyle(
              fontSize: 16.fSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 5.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: safetyPoints.map((sentence) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• ", style: TextStyle(fontSize: 18)),
                Expanded(
                  child: Text(
                    sentence,
                    style: TextStyle(
                        color: Colors.black, fontSize: 14, fontFamily: 'inter'),
                  ),
                ),
              ],
            );
          }).toList(),
        )
      ],
    );
  }

  ///Section Widget
  Widget _buildSafetyAdvice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Safety Advice:",
          style: TextStyle(
              fontSize: 20.fSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBuyAlcohol,
                height: 80.h,
                width: 40.h,
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 60.h,
                    height: 25.h,
                    decoration:
                        BoxDecoration(color: Colors.redAccent.withOpacity(0.2)),
                    child: Center(
                      child: Text(
                        "UNSAFE",
                        style: TextStyle(fontSize: 13.fSize),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "It is Unsafe to consume alcohol with Dolo 650 tablet.",
                    style: TextStyle(
                        fontSize: 11.fSize,
                        color: Colors.black,
                        fontFamily: "inter"),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBuyPragnancy,
                height: 60.h,
                width: 40.h,
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 170.h,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(0.2)),
                    child: Center(
                      child: Text(
                        "CONSULT YOUR DOCTOR",
                        style: TextStyle(fontSize: 13.fSize),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Dolo 650 Tablet may be undafe \nto use during pragnancy. Athough \nthere are limited students in \nhumans animal studies have \nshown harmful effects on the \ndeveloping baby. Your doctor will \nweigh the benifites and any \npotential risk befor prescibing it \nto you. Please consult your \ndoctor.",
                    style: TextStyle(fontSize: 11.fSize, color: Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBuyFeeding,
                height: 70.h,
                width: 40.h,
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 135.h,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: Colors.amberAccent.withOpacity(0.2)),
                    child: Center(
                      child: Text(
                        "SAFE IF PRESCRIBED",
                        style: TextStyle(fontSize: 13.fSize),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Dolo 650 Tablet is safe to use \nduring breastfeeding. Humans \nsuggest that the drug does not \npass into the breastmilk in a \nsignifcant amount and is not \nharmful to the baby.",
                    style: TextStyle(fontSize: 12.fSize, color: Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBuyKidney,
                height: 70.h,
                width: 40.h,
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70.h,
                    height: 30.h,
                    decoration:
                        BoxDecoration(color: Colors.pink.withOpacity(0.2)),
                    child: Center(
                      child: Text(
                        "CAUTION",
                        style: TextStyle(fontSize: 13.fSize),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Dolo 650 Tablet should be used \nwith caution in patients with \nkidney disease. Does adjustment \nof Dolo 650 Tablet contains \nparcetamol which is considered \nthe safest painkiller for kidney \ndisease partients. ",
                    style: TextStyle(fontSize: 12.fSize, color: Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBuyLiver,
                height: 70.h,
                width: 40.h,
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70.h,
                    height: 30.h,
                    decoration:
                        BoxDecoration(color: Colors.blueGrey.withOpacity(0.2)),
                    child: Center(
                      child: Text(
                        "CAUTION",
                        style: TextStyle(fontSize: 13.fSize),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Dolo 650 Tablet should be used \nwith caution in patients with \nkidney disease. Does adjustment \nof Dolo 650 Tablet is not \nrecommended in patients with \nsevere liver disease and active \nliver disease.",
                    style: TextStyle(fontSize: 12.fSize, color: Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }

  Widget _buildSubstitutes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "All substitutes for Dolo 650 Tablet:",
          style: TextStyle(
              fontSize: 20.fSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "For information purpuses only. Consult a doctor before taking any medicine.",
          style: CustomTextStyles.bodySmallBluegray90004,
        ),
        SizedBox(
          height: 25.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Malidens 650 Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "by Abbott",
                  style: TextStyle(fontSize: 12.fSize),
                )
              ],
            ),
            SizedBox(
              width: 30.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "₹1.63/Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  "23% cheaper",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      color: const Color.fromARGB(255, 56, 128, 58),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              width: 20.h,
            ),
            IconButton(
                onPressed: () {
                  Get.to(
                    () => BuyScreen2(),
                    binding: BuyBinding(),
                  );
                  // Add functionality for the bell icon button
                  print('Substitute icon clicked!');
                },
                icon: Icon(Icons.keyboard_double_arrow_right_outlined))
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pyregecic \n650mg Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "by East India \nPharmaceuticals Ltd",
                  style: TextStyle(fontSize: 12.fSize),
                )
              ],
            ),
            SizedBox(
              width: 51.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "₹2.05/Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  "4% cheaper",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      color: const Color.fromARGB(255, 56, 128, 58),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              width: 20.h,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_double_arrow_right_outlined))
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Parafast \n650mg Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "by Cipla Ltd",
                  style: TextStyle(fontSize: 12.fSize),
                )
              ],
            ),
            SizedBox(
              width: 78.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "₹1.79/Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  "16% cheaper",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      color: const Color.fromARGB(255, 56, 128, 58),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              width: 20.h,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_double_arrow_right_outlined))
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Calpol 650mg \n+ Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "by Glaxo SmithKline \nPharmaceuticals Ltd",
                  style: TextStyle(fontSize: 12.fSize),
                )
              ],
            ),
            SizedBox(
              width: 53.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "₹1.89/Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  "11% cheaper",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      color: const Color.fromARGB(255, 56, 128, 58),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              width: 20.h,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_double_arrow_right_outlined))
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welset 650 Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "by Sun Pharmaceutical \nIndustries Ltd",
                  style: TextStyle(fontSize: 12.fSize),
                )
              ],
            ),
            SizedBox(
              width: 30.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "₹1.46/Tablet",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  "31% cheaper",
                  style: TextStyle(
                      fontSize: 14.fSize,
                      color: const Color.fromARGB(255, 56, 128, 58),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              width: 20.h,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_double_arrow_right_outlined))
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: 400.h,
          child: Card(
            elevation: 3,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white // Set the background color
                    ),
                onPressed: () {},
                child: Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 15.fSize, color: theme.colorScheme.primary),
                )),
          ),
        )
      ],
    );
  }

  Widget _buildPriceOffer() {
    return SizedBox(
      height: 70.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 12.h,
              top: 10.h,
              bottom: 10.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.h), // Circular top-left corner
                topRight: Radius.circular(15.h), // Circular top-right corner
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft, //Alignment(0, 0.5),
                end: Alignment.bottomRight, //Alignment(1, 0),
                colors: [appTheme.red900Cc, appTheme.red300Cc],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "msg_add_items_worth".tr,
                    style: TextStyle(fontSize: 12.fSize, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 6.h,
                  width: 70.h,
                  decoration: BoxDecoration(
                    color: appTheme.deepOrange40001,
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Section Widget
  Widget _buildActionButtons() {
    return Container(
      width: double.maxFinite,
      //  height: 150.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        //vertical: 10.h,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 20.h,
            blurRadius: 10.h,
            offset: Offset(
              0,
              25.89,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 10.h, right: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMarketPlace,
                  height: 40.h,
                  width: 54.h,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HOME",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.fSize,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "PARAS TIREA NOIDA",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.fSize,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Change",
                          style: TextStyle(
                              fontSize: 15.fSize, color: Color(0XFFFF6B46)),
                        )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "₹109",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "See bill summary",
                        style: TextStyle(
                            color: Color(0XFFFF6B46),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.h),
                  child: SizedBox(
                    width: 120,
                    height: 40.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(
                          CartScreen(),
                          binding: CartBinding(),
                        );
                      },
                      child: Text(
                        "Continue",
                        style:
                            TextStyle(color: Colors.white, fontSize: 18.fSize),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.h)),
                          backgroundColor: Color(0XFFFF6B46).withOpacity(0.85)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onCartButtonTapped() {}

  void onSearchSubmitted(String query) {
    Get.toNamed('/search-results', arguments: {'query': query});
  }

  onTapArrowleftone() {
    Get.back();
  }
}

class SearchController extends GetxController {
  var isSearchActive = false.obs; // Observable for search bar visibility

  void toggleSearch() {
    isSearchActive.value = !isSearchActive.value;
  }
}

class FavoriteController extends GetxController {
  var isFavorite = false.obs; // Observable variable for favorite state

  void toggleFavorite() {
    isFavorite.value = !isFavorite.value;
  }
}
