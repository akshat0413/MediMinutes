import 'package:flutter/material.dart';
import 'package:mediminutes/presentation/offer_zone_screen/models/offer_zone_model.dart';
import '../../../core/app_export.dart';

///A controller class for the OfferZoneScreen.
///
///This class manaages the state of the OfferZoneScreen, includeing the
///current OfferZOneModelObj
class OfferZoneController extends GetxController {
  Rx<OfferZoneModel> offerZoneModelObj = OfferZoneModel().obs;
}
