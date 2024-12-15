import 'package:mediminutes/routes/app_routes.dart';
import '../models/spleshscreen_model.dart';
import '../../../core/app_export.dart';

///A controller class for the LoginScreen.
///
///This class manaages the state of the LoginScreen, includeing the
///current loginModelObj
class SpleshscreenController extends GetxController {
  Rx<SpleshscreenModel> spleshscreenModelObj = SpleshscreenModel().obs;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.loginScreen,
      );
    });
  }
}
