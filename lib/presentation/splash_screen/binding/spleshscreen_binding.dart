import 'package:mediminutes/presentation/splash_screen/controller/spleshscreen_controller.dart';
import '../../../core/app_export.dart';

///A binding class for the SpleshscreenScreen.
///
///this class ensures that the SpleshscreenCOntroller is created when the
///SpleshSceen is first loaded.
class SpleshscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpleshscreenController());
  }
}
