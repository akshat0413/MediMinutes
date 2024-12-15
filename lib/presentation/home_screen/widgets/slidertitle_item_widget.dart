// import 'package:flutter/material.dart';
// import '../../../core/app_export.dart';
// import '../models/slidertitle_item_model.dart';

// // ignore_for_file: must_be_immutable
// class SlidertitleItemWidget extends StatelessWidget {
//   SlidertitleItemWidget(this.slidertitleItemModelObj, {Key? key})
//       : super(
//           key: key,
//         );

//   SlidertitleItemModel slidertitleItemModelObj;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 16.h,
//         vertical: 8.h,
//       ),
//       decoration: BoxDecoration(
//         color: appTheme.gray4002b,
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: Align(
//               alignment: Alignment.bottomLeft,
//               child: Padding(
//                 padding: EdgeInsets.only(top: 2.h),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           TextSpan(
//                             text: "lbl_grab_your".tr,
//                             style: CustomTextStyles.titleSmallLatoIndigo900,
//                           ),
//                           TextSpan(
//                             text: "lbl_insurance".tr,
//                             style: CustomTextStyles.titleSmallLatoIndigo900Bold,
//                           ),
//                           TextSpan(
//                             text: "lbl_offer_today".tr,
//                             style: CustomTextStyles.titleSmallLatoIndigo900,
//                           )
//                         ],
//                       ),
//                       textAlign: TextAlign.left,
//                     ),
//                     SizedBox(height: 2.h),
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           TextSpan(
//                             text: "msg_get_25_off_your2".tr,
//                             style: theme.textTheme.labelMedium,
//                           ),
//                           TextSpan(
//                             text: "msg_health_insurance".tr,
//                             style: CustomTextStyles.labelMediumSemiBold,
//                           ),
//                           TextSpan(
//                             text: "msg_renewals_with_us".tr,
//                             style: theme.textTheme.labelMedium,
//                           ),
//                           TextSpan(
//                             text: "msg_protect_your_family".tr,
//                             style: CustomTextStyles.labelMediumBold,
//                           )
//                         ],
//                       ),
//                       textAlign: TextAlign.left,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(height: 24.h)
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           CustomImageView(
//             imagePath: ImageConstant.imgSettingsIndigo900,
//             height: 52.h,
//             width: 54.h,
//             margin: EdgeInsets.only(right: 6.h),
//           )
//         ],
//       ),
//     );
//   }
// }
