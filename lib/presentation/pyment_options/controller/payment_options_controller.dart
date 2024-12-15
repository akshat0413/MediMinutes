import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/payment_options_model.dart';

///A controller class for the HomeScreen.
///
///This class manaages the state of the HomeScreen, includeing the
///current homeModelObj
class PaymentOptionsController extends GetxController {
  Rx<PaymentOptionsModel> PaymentOptionsModelObj = PaymentOptionsModel().obs;
}
