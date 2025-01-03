import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/search_screen/models/medicine_item_list_model.dart';

import '../../../core/app_export.dart';
import '../controller/search_screen_controller.dart';

class MedicineListItemWidget extends StatelessWidget {
  MedicineListItemWidget(this.medicineListItemModelObj, {Key? key})
      : super(
          key: key,
        );

  MedicineItemListModel medicineListItemModelObj;

  var controller = Get.find<SearchScreenController>();

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> quantity = ValueNotifier<int>(0);

    return Container(
      width: 350.h,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
      decoration: BoxDecoration(
        color: Color(0xFFEEEEDD).withOpacity(0.42),
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: Color(0XFF19543E), width: 0.5, // Reduced border thickness
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        medicineListItemModelObj.dolo650Tablet!.value,
                        style: TextStyle(
                            fontFamily: "inter",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.fSize),
                      ),
                    ),
                    Obx(
                      () => Text(
                        medicineListItemModelObj.tabletsCounter!.value,
                        style: TextStyle(
                            fontFamily: "inter",
                            color: Colors.black,
                            fontSize: 14.fSize),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Get in ",
                          style: TextStyle(
                              fontFamily: "inter",
                              color: Colors.black,
                              fontSize: 12.fSize),
                        ),
                        Text(
                          "10 mins ",
                          style: TextStyle(
                              fontFamily: "inter",
                              color: Colors.red,
                              fontSize: 12.fSize),
                        ),
                        Icon(
                          Icons.flash_on,
                          color: Colors.red,
                          size: 14.h,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Obx(
                      () => Text(
                        medicineListItemModelObj.mrp34eighty!.value,
                        style: TextStyle(
                            fontFamily: "inter",
                            color: Colors.grey.shade600,
                            fontSize: 12.fSize),
                      ),
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Text(
                            medicineListItemModelObj.price!.value,
                            style: TextStyle(
                                fontFamily: "inter",
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.fSize),
                          ),
                        ),
                        SizedBox(
                          width: 5.h,
                        ),
                        Text(
                          medicineListItemModelObj.offer!.value,
                          style: TextStyle(
                              fontFamily: "inter",
                              color: Colors.red,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.fSize),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFFADCCA3)
                            .withOpacity(0.39), // Background color
                        foregroundColor: Colors.black, // Text and icon color
                        elevation: 0, // Shadow elevation
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8, vertical: 12), // Button padding
                      ),
                      child: Row(
                        mainAxisSize:
                            MainAxisSize.min, // To fit content tightly
                        children: [
                          Text(
                            "More Details",
                            style: TextStyle(
                              color: Colors
                                  .black, // Text color (overrides foregroundColor for text)
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 2), // Spacing between text and icon
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 15.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 5.h,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.h),
                  child: Image.asset(
                    medicineListItemModelObj.medicineImage!.value,
                    height: 130.h,
                    width: 160.h,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(Icons.broken_image),
                  ),
                ),
                Positioned(
                  bottom: -15.h, // Pushes the button 20% below the image
                  left: 25.h, // Centers the button horizontally
                  right: 10.h, // Centers the button horizontally
                  child: SizedBox(
                    width: 110.h, // Button width similar to the image width
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button logic here
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    // return Container(
    //   width: double.maxFinite,
    //   margin: EdgeInsets.only(left: 4.h),
    //   padding: EdgeInsets.symmetric(horizontal: 2.h),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Obx(
    //         () => Text(
    //           "MediMinutes Pharmacy",
    //           style: TextStyle(
    //               fontFamily: "inter",
    //               color: Colors.black,
    //               fontWeight: FontWeight.w600,
    //               fontSize: 17.fSize),
    //         ),
    //       ),
    // Row(
    //   children: [
    //     CustomImageView(
    //       imagePath: ImageConstant.imgClockPharma,
    //     )
    //   ],
    // )
    //         Obx(
    //           () => Text(
    //             medicineListItemModelObj.tabletsCounter!.value,
    //             style: TextStyle(
    //                 fontFamily: "inter",
    //                 color: Colors.black,
    //                 fontSize: 10.fSize),
    //           ),
    //         ),
    //         Row(
    //           children: [
    //             Text(
    //               "Get in ",
    //               style: TextStyle(
    //                   fontFamily: "inter",
    //                   color: Colors.black,
    //                   fontSize: 10.fSize),
    //             ),
    //             Text(
    //               "10 mins ",
    //               style: TextStyle(
    //                   fontFamily: "inter",
    //                   color: Colors.red,
    //                   fontSize: 10.fSize),
    //             ),
    //             Icon(
    //               Icons.flash_auto,
    //               color: Colors.red,
    //             )
    //           ],
    //         ),
    //         Obx(
    //           () => Text(
    //             medicineListItemModelObj.mrp34eighty!.value,
    //             style: TextStyle(
    //                 fontFamily: "inter",
    //                 color: Colors.black,
    //                 fontSize: 10.fSize),
    //           ),
    //         ),
    //         Row(
    //           children: [
    //             Obx(
    //               () => Text(
    //                 medicineListItemModelObj.price!.value,
    //                 style: TextStyle(
    //                     fontFamily: "inter",
    //                     color: Colors.black,
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 10.fSize),
    //               ),
    //             ),
    //             Text(
    //               "10 mins ",
    //               style: TextStyle(
    //                   fontFamily: "inter",
    //                   color: Colors.red,
    //                   fontWeight: FontWeight.w400,
    //                   fontSize: 10.fSize),
    //             ),
    //           ],
    //         ),
    //         ElevatedButton(
    //           onPressed: () {},
    //           child: Row(
    //             children: [
    //               Text(
    //                 "More Details",
    //                 style: TextStyle(
    //                     color: Colors.black,
    //                     fontFamily: "inter",
    //                     fontWeight: FontWeight.w400),
    //               ),
    //               Icon(Icons.arrow_right_alt),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //     SizedBox(
    //       width: 50.h,
    //     ),
    //     Stack(
    //       children: [
    //         Obx(
    //           () => Card(
    //             elevation: 4,
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(
    //                   10.0), // Adjust the radius as needed
    //               child: CustomImageView(
    //                 imagePath:
    //                     medicineListItemModelObj.medicineImage!.value,
    //                 height: 170.h,
    //                 width: double.maxFinite,
    //               ),
    //             ),
    //           ),
    //         ),
    //         Card(
    //           elevation: 5,
    //           child: SizedBox(
    //             width: 100.h,
    //             child: ElevatedButton(
    //               onPressed: () {},
    //               child: Text(
    //                 "ADD",
    //                 style: TextStyle(
    //                   fontSize: 15.fSize,
    //                   color: Color(0XFF19543E),
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //               style: ElevatedButton.styleFrom(
    //                 backgroundColor: Colors.white,
    //                 shadowColor: Colors.grey,
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(60),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         // Align(
    //         //   alignment: Alignment.centerRight,
    //         //   child: Card(
    //         //     elevation: 8,
    //         //     shadowColor: Colors.grey,
    //         //     child: SizedBox(
    //         //       width: 100.h,
    //         //       height: 34.h,
    //         //       child: ValueListenableBuilder<int>(
    //         //         valueListenable: quantity,
    //         //         builder: (context, qty, _) {
    //         //           return ValueListenableBuilder<int>(
    //         //             valueListenable: selectedOffer,
    //         //             builder: (context, selectedOfferValue, _) {
    //         //               if (qty == 0) {
    //         //                 return ElevatedButton(
    //         //                   onPressed: () {
    //         //                     if (selectedOfferValue == 0) {
    //         //                       Get.snackbar('Alert',
    //         //                           'Please select an offer before clicking ADD');
    //         //                     } else {
    //         //                       quantity.value = 1;
    //         //                       isBottomNavBarVisible.value =
    //         //                           true; // Show bottom navigation bar
    //         //                     }
    //         //                   },
    //         //                   child: Text(
    //         //                     "ADD",
    //         //                     style: TextStyle(
    //         //                       fontSize: 15.fSize,
    //         //                       color: Color(0XFF19543E),
    //         //                       fontWeight: FontWeight.bold,
    //         //                     ),
    //         //                   ),
    //         //                   style: ElevatedButton.styleFrom(
    //         //                     backgroundColor: Colors.white,
    //         //                     shadowColor: Colors.grey,
    //         //                     shape: RoundedRectangleBorder(
    //         //                       borderRadius: BorderRadius.circular(60),
    //         //                     ),
    //         //                   ),
    //         //                 );
    //         //               } else {
    //         //                 return Row(
    //         //                   mainAxisAlignment:
    //         //                       MainAxisAlignment.spaceEvenly,
    //         //                   children: [
    //         //                     Expanded(
    //         //                       child: IconButton(
    //         //                         icon: Icon(
    //         //                           Icons.remove,
    //         //                           size: 20.h,
    //         //                           color: Color(0XFF19543E),
    //         //                         ),
    //         //                         onPressed: () {
    //         //                           if (qty > 1) {
    //         //                             quantity.value--;
    //         //                           } else {
    //         //                             quantity.value = 0;
    //         //                             isBottomNavBarVisible.value =
    //         //                                 false; // Hide bottom navigation bar
    //         //                           }
    //         //                         },
    //         //                       ),
    //         //                     ),
    //         //                     Text(
    //         //                       '$qty',
    //         //                       style: TextStyle(
    //         //                         fontSize: 16.fSize,
    //         //                         fontWeight: FontWeight.bold,
    //         //                         color: Colors.black,
    //         //                       ),
    //         //                     ),
    //         //                     IconButton(
    //         //                       icon: Icon(Icons.add,
    //         //                           size: 20.h, color: Color(0XFF19543E)),
    //         //                       onPressed: () {
    //         //                         quantity.value++;
    //         //                       },
    //         //                     ),
    //         //                   ],
    //         //                 );
    //         //               }
    //         //             },
    //         //           );
    //         //         },
    //         //       ),
    //         //     ),
    //         //   ),
    //         // ),
    //       ],
    //     )
    //   ],
    // )
    // // Row(children: [Obx(() => Card(
    // //           elevation: 4,
    // //           child: ClipRRect(
    // //             borderRadius: BorderRadius.circular(
    // //                 10.0), // Adjust the radius as needed
    // //             child: CustomImageView(
    // //               imagePath: medicineListItemWidget.!.value,
    // //               height: 172.h,
    // //               width: double.maxFinite,
    // //             ),
    // //           ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
