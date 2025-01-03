import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediminutes/presentation/home_screen/models/home_model.dart';
import '../../../core/app_export.dart';
import '../models/home_initial_model.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj and search functionality.
class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeInitialModel> homeInitialModelObj = HomeInitialModel().obs;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  // List of all items (pharmacy shops and medicines)
  List<SearchResultModel> allItems = [
    SearchResultModel(
        name: "Pharma Shop 1", imageUrl: "assets/images/pharma1.png"),
    SearchResultModel(
        name: "Pharma Shop 2", imageUrl: "assets/images/pharma2.png"),
    SearchResultModel(
        name: "Medicine A", imageUrl: "assets/images/medicine_a.png"),
    SearchResultModel(
        name: "Medicine B", imageUrl: "assets/images/medicine_b.png"),
    SearchResultModel(
        name: "Pharma Shop 3", imageUrl: "assets/images/pharma3.png"),
    SearchResultModel(
        name: "Medicine C", imageUrl: "assets/images/medicine_c.png"),
  ];

  // Observable list for filtered search results
  RxList<SearchResultModel> searchResults = <SearchResultModel>[].obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    print("HomeController initialized");
  }

  // Method to filter search results based on the query
  void filterSearchResults(String query) {
    if (query.isEmpty) {
      searchResults.clear();
    } else {
      searchResults.value = allItems
          .where(
              (item) => item.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}

// Model for search results
class SearchResultModel {
  final String name;
  final String imageUrl;

  SearchResultModel({required this.name, required this.imageUrl});
}
