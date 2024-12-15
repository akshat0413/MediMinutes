import '../../../core/app_export.dart';
import '../controller/my_order_search_controller.dart';

/// A binding class for the HomeScreen.
///
/// This class ensures that the HomeController is created when the
/// HomeScreen is first loaded.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrderSearchController());
  }
}
