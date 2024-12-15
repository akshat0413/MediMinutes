import '../../../core/app_export.dart';
import '../controller/cart_controller.dart';

/// A binding class for the CartScreen.
///
/// This class ensures that the CartController is created when the
/// CartScreen is first loaded.
class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
