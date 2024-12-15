import '../../../core/app_export.dart';

/// This class is used in the [sliderupto_item_widget] screen.

// ignore_for_file: must_be_immutable
class SlideruptoItemModel {
  SlideruptoItemModel(
      {this.upto,
      this.eighty,
      this.offer,
      this.onhealth,
      this.homeopathy,
      this.id}) {
    upto = upto ?? Rx("Upto");
    eighty = eighty ?? Rx("80%");
    offer = offer ?? Rx("Offer*");
    onhealth = onhealth ?? Rx("On Health Products");
    homeopathy =
        homeopathy ?? Rx("Homeopathy, Ayurvedic, Personal Care & More");
    id = id ?? Rx("");
  }

  Rx<String>? upto;

  Rx<String>? eighty;

  Rx<String>? offer;

  Rx<String>? onhealth;

  Rx<String>? homeopathy;

  Rx<String>? id;
}
