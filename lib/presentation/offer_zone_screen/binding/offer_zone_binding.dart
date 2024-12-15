import '../../../core/app_export.dart';
import '../controller/offer_zone_controller.dart';

/// A binding class for the OfferXoneScreen.
///
/// This class ensures that the OfferZoneController is created when the
/// OfferZoneScreen is first loaded.
class OfferZoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfferZoneController());
  }
}
