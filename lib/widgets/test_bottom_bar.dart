// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// enum BottomNavBarEnum { Home, Wallet, Services, Card, Profile }

// class CustomBottomNavBarExample extends StatelessWidget {
//   final RxInt SelectedIndex = 0.obs;
//   final Function(BottomNavBarEnum)? onChanged;

//   CustomBottomNavBarExample({Key? key, this.onChanged}) : super(key: key);

//   final List<BottomMenuModel> bottomMenuList = [
//     BottomMenuModel(
//         icon: Icons.home, title: "Home", type: BottomNavBarEnum.Home),
//     BottomMenuModel(
//         icon: Icons.account_balance_wallet,
//         title: "Wallet",
//         type: BottomNavBarEnum.Wallet),
//     BottomMenuModel(
//         icon: Icons.add,
//         title: "Services",
//         type: BottomNavBarEnum.Services,
//         isCircle: true),
//     BottomMenuModel(
//         icon: Icons.credit_card, title: "Card", type: BottomNavBarEnum.Card),
//     BottomMenuModel(
//         icon: Icons.person, title: "Profile", type: BottomNavBarEnum.Profile),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade300,
//             blurRadius: 10,
//             spreadRadius: 2,
//           ),
//         ],
//       ),
//       child: Obx(
//         () => Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: List.generate(bottomMenuList.length, (index) {
//             if (bottomMenuList[index].isCircle) {
//               return GestureDetector(
//                 onTap: () {
//                   selectedIndex.value = index;
//                   onChanged?.call(bottomMenuList[index].type);
//                 },
//                 child: Container(
//                   width: 60,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: Colors.green.shade100,
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 3),
//                   ),
//                   child: Icon(
//                     bottomMenuList[index].icon,
//                     color: Colors.green,
//                   ),
//                 ),
//               );
//             }
//             return GestureDetector(
//               onTap: () {
//                 selectedIndex.value = index;
//                 onChanged?.call(bottomMenuList[index].type);
//               },
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(
//                     bottomMenuList[index].icon,
//                     color: selectedIndex.value == index
//                         ? Colors.black
//                         : Colors.grey.shade400,
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     bottomMenuList[index].title ?? "",
//                     style: TextStyle(
//                       color: selectedIndex.value == index
//                           ? Colors.black
//                           : Colors.grey.shade400,
//                       fontWeight: selectedIndex.value == index
//                           ? FontWeight.bold
//                           : FontWeight.normal,
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

// class BottomMenuModel {
//   final IconData icon;
//   final String? title;
//   final BottomNavBarEnum type;
//   final bool isCircle;

//   BottomMenuModel({
//     required this.icon,
//     this.title,
//     required this.type,
//     this.isCircle = false,
//   });
// }

// void main() {
//   runApp(MaterialApp(home: CustomBottomNavBarExample()));
// }
