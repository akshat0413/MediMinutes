import '../../../core/app_export.dart';
import '../buy_controller/buy_controller.dart';

/// A binding class for the BuyScreen.
///
/// This class ensures that the BuyController is created when the
/// BuyScreen is first loaded.
class BuyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyController());
  }
}
