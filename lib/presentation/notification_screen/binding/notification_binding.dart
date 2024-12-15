import '../../../core/app_export.dart';
import '../controller/notification_controller.dart';

/// A binding class for the OfferXoneScreen.
///
/// This class ensures that the OfferZoneController is created when the
/// OfferZoneScreen is first loaded.
class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationController());
  }
}
