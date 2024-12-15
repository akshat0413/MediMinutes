import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../controller/app_navigation_controller.dart';

/// A binding class for the AppNavigationScreen.
///
/// This class ensures that the AppNavigationController is created when the.
/// AppNavigationScreen is frist loaded.
class AppNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigationController());
  }
}
