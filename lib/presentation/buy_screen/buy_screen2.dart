import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/cart_screen/cart_screen_empty.dart';
import 'package:mediminutes/widgets/custom_elevated_button.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'buy_controller/buy_controller.dart';

class BuyScreen2 extends GetWidget<BuyController> {
  BuyScreen2({Key? key})
      : super(
          key: key,
        );

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
                  SizedBox(height: 20.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgBuyParacetamol,
                    height: 260.h,
                    radius: BorderRadius.circular(20.h),
                    width: double.maxFinite,
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildProductTitle(),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildProductDetail(),
                  ),
                  SizedBox(
                    height: 15.h,
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
        bottomNavigationBar: _buildActionButtons(),
      ),
    );
  }

  ///Section Widget
  PreferredSize _buildHeader() {
    final SearchController2 searchController2 = Get.put(SearchController2());

    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Obx(() {
        return CustomAppBar(
          leadingWidth: 70.h,
          leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftblack90001,
            onTap: () {
              onTapArrowleftone();
            },
          ),
          title: searchController2.isSearchActive.value
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
          styleType: Style.bgFillGreen200,
          actions: [
            IconButton(
              icon: Icon(
                searchController2.isSearchActive.value
                    ? Icons.close
                    : Icons.search,
              ),
              onPressed: () {
                searchController2.toggleSearch();
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                onCartButtonTapped();
              },
            ),
          ],
        );
      }),
    );
  }

  Widget _buildProductTitle() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Dolo 650 Tablet',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                selectionColor: Colors.black,
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star_border,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Micro Labs Ltd',
            style: CustomTextStyles.bodyMediumInterBluegray9000315_1,
            selectionColor: Colors.blueGrey,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Composition',
            style: CustomTextStyles.bodyMediumInterBluegray9000315_1,
          ),
          Text(
            'Paracetamol(650mg)',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: 180.h,
            height: 45.h,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10.h),
                color: const Color.fromARGB(255, 234, 238, 240),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    'Delivery in '.tr,
                    style: CustomTextStyles.bodyMediumInterBluegray9000315_1,
                  ),
                  Text(
                    '10 Min '.tr,
                    style: CustomTextStyles.titleSmallBlack90001,
                  ),
                  Icon(Icons.alarm),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Section Widget
  Widget _buildProductDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Product Detail:",
          style: TextStyle(
              fontSize: 20.fSize,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          width: 50.h,
          height: 30.h,
          decoration: BoxDecoration(color: Colors.blueAccent.withOpacity(0.2)),
          child: Center(
            child: Text(
              "Use:",
              style: TextStyle(fontSize: 18.fSize),
            ),
          ),
        ),
        Text(
            "• Relieves mild to moderate pain, including headaches, \n   toothaches, and menstrual pain. \n• Reduces fever by acting on the body's temperature \n   regulation center. \n• Often used in the treatment of cold and flu symptoms. \n• Safe for most individuals when used as directed. \n• Requires caution in cases of liver disorders or alcohol \n   use.  \n• Generally well-tolerated with minimal side effects when \n   taken within the recommended dosage.",
            style: CustomTextStyles.bodySmallBluegray90004),
        SizedBox(
          height: 15.h,
        ),
        Container(
          width: 90.h,
          height: 30.h,
          decoration: BoxDecoration(color: Colors.pink.withOpacity(0.2)),
          child: Center(
            child: Text(
              "Benefits:",
              style: TextStyle(fontSize: 18.fSize),
            ),
          ),
        ),
        Text(
            "• Reduces fever effectively in conditions like cold, flu, or \n   infections. \n• Relieves mild to moderate pain such as headache, \n   muscle pain, toothache, back pain, and menstrual \n   cramps. \n• Safe for most age groups when used in the \n   recommended dosage.   \n• Does not cause addiction or dependency, unlike \n   stronger painkillers.\n• Gentle on the stomach, suitable for people with a \n   history of ulcers or gastritis.\n• Versatile use for fever, post-vaccination pain, cold and \n   flu symptoms, and chronic conditions.\n• Quick action, providing relief within 30-60 minutes and \n   lasting 4-6 hours. \n• Easily available and affordable. ",
            style: CustomTextStyles.bodySmallBluegray90004),
        SizedBox(
          height: 15.h,
        ),
        Container(
          width: 120.h,
          height: 30.h,
          decoration: BoxDecoration(color: Colors.purple.withOpacity(0.2)),
          child: Center(
            child: Text(
              "Side Effects:",
              style: TextStyle(fontSize: 18.fSize),
            ),
          ),
        ),
        Text(
            "• Nausea and vomiting. \n• Allergic reactions like rash, itching, or swelling. \n• Rare liver damage with overdose or prolonged use. \n• Dark urine or yellowing of skin and eyes (signs of liver  \n   toxicity). \n• Abdominal pain in rare cases.  \n• Dizziness or fatigue in some individuals.",
            style: CustomTextStyles.bodySmallBluegray90004),
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
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBuyAlcohol,
              height: 100.h,
              width: 90.h,
            ),
            SizedBox(
              width: 40.h,
            ),
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
                  "It is Unsafe to consume alcohol \nwith Dolo 650 tablet.",
                  style: TextStyle(fontSize: 11.fSize, color: Colors.black),
                )
              ],
            ),
          ],
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
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBuyPragnancy,
              height: 100.h,
              width: 90.h,
            ),
            SizedBox(
              width: 40.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 170.h,
                  height: 25.h,
                  decoration:
                      BoxDecoration(color: Colors.deepPurple.withOpacity(0.2)),
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
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBuyFeeding,
              height: 85.h,
              width: 90.h,
            ),
            SizedBox(
              width: 40.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 135.h,
                  height: 30.h,
                  decoration:
                      BoxDecoration(color: Colors.amberAccent.withOpacity(0.2)),
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
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        // SizedBox(
        //   height: 10.h,
        // ),
        // Row(
        //   children: [
        //     CustomImageView(
        //       imagePath: ImageConstant.imgBuyDriving,
        //       height: 90.h,
        //       width: 90.h,
        //     ),
        //     SizedBox(
        //       width: 40.h,
        //     ),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           width: 45.h,
        //           height: 30.h,
        //           decoration:
        //               BoxDecoration(color: Colors.cyanAccent.withOpacity(0.2)),
        //           child: Center(
        //             child: Text(
        //               "SAFE",
        //               style: TextStyle(fontSize: 13.fSize),
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 5.h,
        //         ),
        //         Text(
        //           "Dolo 650 Tablet does not usually \nafect your ability to drive.",
        //           style: TextStyle(fontSize: 12.fSize, color: Colors.black),
        //         )
        //       ],
        //     ),
        //   ],
        // ),
        // SizedBox(
        //   height: 10.h,
        // ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBuyKidney,
              height: 90.h,
              width: 90.h,
            ),
            SizedBox(
              width: 40.h,
            ),
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
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: const Color.fromARGB(255, 212, 211, 211),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBuyLiver,
              height: 100.h,
              width: 90.h,
            ),
            SizedBox(
              width: 40.h,
            ),
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

  ///Section Widget
  Widget _buildActionButtons() {
    return Card(
      elevation: 10,
      child: Container(
        height: 70.h,
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
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 18.h,
                      ),
                      Text(
                        "₹75",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      Text(
                        "MRP ₹150",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  Text(
                    "50% off",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.h,
            ),
            Container(
              height: 56.h,
              //   padding: EdgeInsets.all(.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
              width: 150.h,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: CustomElevatedButton(
                        height: 50.h,
                        text: "Add to Cart",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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

class SearchController2 extends GetxController {
  var isSearchActive = false.obs; // Observable for search bar visibility

  void toggleSearch() {
    isSearchActive.value = !isSearchActive.value;
  }
}
