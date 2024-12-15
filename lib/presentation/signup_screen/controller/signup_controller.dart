import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';

import '../models/signup_model.dart';

class SignupController extends GetxController {
  TextEditingController firstNameInputController = TextEditingController();

  TextEditingController secondNameInputController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController dobInputController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController otpInputController = TextEditingController();

  Rx<SignupModel> signupModelobj = SignupModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  @override
  void onClose() {
    firstNameInputController.dispose();
    secondNameInputController.dispose();
    emailInputController.dispose();
    dobInputController.dispose();
    phoneNumberController.dispose();
    otpInputController.dispose();
  }
}
