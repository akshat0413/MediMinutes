import '../../../core/app_export.dart';
import '../controller/search_screen_controller.dart';

/// A binding class for the CartScreen.
///
/// This class ensures that the CartController is created when the
/// CartScreen is first loaded.
class SearchScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchScreenController());
  }
}
