import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/signup_screen/controller/signup_controller.dart';
import '../../../core/app_export.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}
