// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'controller/home_controller.dart';

// class SearchScreen extends StatelessWidget {
//   SearchScreen({Key? key}) : super(key: key);

//   final TextEditingController searchController = TextEditingController();
//   final RxString selectedFilter = ''.obs; // To track the selected filter

//   HomeController controller = Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Container(
//         height: 40.0, // Adjust the height
//         width: double.infinity, // Adjust the width as per your need
//         margin:
//             EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0), // Add margin
//         decoration: BoxDecoration(
//           color: Colors.white, // Background color of the search bar
//           borderRadius: BorderRadius.circular(12.0), // Rounded corners
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12, // Shadow color
//               blurRadius: 6.0, // Blur radius
//               offset: Offset(0, 3), // Shadow position
//             ),
//           ],
//         ),
//         child: SearchBar(
//           controller: searchController,
//           hintText: 'Search...',
//           onChanged: (value) {
//             // Handle search input changes
//             print("Search query: $value");
//           },
//           onSubmitted: (value) {
//             // Handle search input submission
//             print("Search submitted: $value");
//           },
//         ),
//       )),
//       body: Column(
//         children: [
//           // Filters Section
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Obx(() => ChoiceChip(
//                       label: Text('Pharmacy'),
//                       selected: selectedFilter.value == 'Pharmacy',
//                       onSelected: (bool selected) {
//                         selectedFilter.value = selected ? 'Pharmacy' : '';
//                         print("Selected Filter: ${selectedFilter.value}");
//                       },
//                     )),
//                 Obx(() => ChoiceChip(
//                       label: Text('Medicine'),
//                       selected: selectedFilter.value == 'Medicine',
//                       onSelected: (bool selected) {
//                         selectedFilter.value = selected ? 'Medicine' : '';
//                         print("Selected Filter: ${selectedFilter.value}");
//                       },
//                     )),
//               ],
//             ),
//           ),
//           // Search Results Section
//           Expanded(
//             child: Center(
//               child: Text('Search results will appear here'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
