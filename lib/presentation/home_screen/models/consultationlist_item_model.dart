import '../../../core/app_export.dart';

/// This class is used in the [consultationlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ConsultationlistItemModel {
  ConsultationlistItemModel({this.consultation, this.consultation1, this.id}) {
    consultation = consultation ?? Rx(ImageConstant.imgTelevision);
    consultation1 = consultation1 ?? Rx("Consultation");
    id = id ?? Rx("");
  }

  Rx<String>? consultation;

  Rx<String>? consultation1;

  Rx<String>? id;
}
