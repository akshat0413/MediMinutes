import '../../../core/app_export.dart';
import '../controller/order_place_controller.dart';

/// A binding class for the OrderPlaceScreen.
///
/// This class ensures that the OrderPlaceController is created when the
/// OrderPlaceScreen is first loaded.
class ProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileScreenController());
  }
}
