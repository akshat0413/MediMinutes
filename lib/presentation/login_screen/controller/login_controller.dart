import 'package:flutter/material.dart';
import '../models/login_model.dart';
import '../../../core/app_export.dart';

///A controller class for the LoginScreen.
///
///This class manaages the state of the LoginScreen, includeing the
///current loginModelObj
class LoginController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController inputareaoneController = TextEditingController();

  Rx<LoginModel> LoginModelObj = LoginModel().obs;

  @override
  void onClose() {
    super.onClose();
    mobileNumberController.dispose();
    inputareaoneController.dispose();
  }
}
