import '../../../core/app_export.dart';
import '../../cart_screen/cart_screen.dart';
import '../controller/home_controller.dart';

/// A binding class for the HomeScreen.
///
/// This class ensures that the HomeController is created when the
/// HomeScreen is first loaded.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
