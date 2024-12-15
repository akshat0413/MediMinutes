import '../../../core/app_export.dart';
import '../controller/payment_options_controller.dart';

/// A binding class for the CartScreen.
///
/// This class ensures that the CartController is created when the
/// CartScreen is first loaded.
class PaymentOptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentOptionsController());
  }
}
