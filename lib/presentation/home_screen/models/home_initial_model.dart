import 'package:mediminutes/presentation/home_screen/models/lisnutrition_item_model.dart';
import '../../../core/app_export.dart';
import 'consultationlist_item_model.dart';
import 'listaccucheck_item_model.dart';
import 'listmedicines_item_model.dart';
import 'listface_wash_item_model.dart';
import 'sliderupto_item_model.dart';
import 'gridnutritional_item_model.dart';

/// This class defines the variables used in the [frame_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HomeInitialModel {
  Rx<List<ConsultationlistItemModel>> consultationlistItemList = Rx([
    ConsultationlistItemModel(
        consultation: ImageConstant.imgTelevision.obs,
        consultation1: "Consulation".obs),
    ConsultationlistItemModel(
        consultation: ImageConstant.imgHospital.obs,
        consultation1: "Hospital".obs),
    ConsultationlistItemModel(
        consultation: ImageConstant.imgCalendar.obs,
        consultation1: "Appointment".obs),
    ConsultationlistItemModel(
        consultation: ImageConstant.imgFavorite.obs,
        consultation1: "Stores".obs)
  ]);

  Rx<List<ListmedicinesItemModel>> listmedicinesItemList = Rx([
    ListmedicinesItemModel(
        medicinesOne: ImageConstant.imgEllipse7.obs,
        medicinesThree: ImageConstant.imgClose.obs,
        medicinesFour: "Medines".obs),
    ListmedicinesItemModel(
        medicinesOne: ImageConstant.imgEllipse8.obs,
        medicinesThree: ImageConstant.imgLab.obs,
        medicinesFour: "Lab Test".obs),
    ListmedicinesItemModel(
        medicinesOne: ImageConstant.imgEllipse9.obs,
        medicinesThree: ImageConstant.imgCareTaking.obs,
        medicinesFour: "Caretaking".obs),
    ListmedicinesItemModel(
        medicinesOne: ImageConstant.imgEllipse10.obs,
        medicinesThree: ImageConstant.imgDoctor.obs,
        medicinesFour: "Doctor \nConsultation".obs),
    ListmedicinesItemModel(
        medicinesOne: ImageConstant.imgEllipse11.obs,
        medicinesThree: ImageConstant.imgAppointment.obs,
        medicinesFour: "Offine \nAppointment".obs),
  ]);

  Rx<List<GridnutritionalItemModel>> gridnutritionalItemModel = Rx([
    GridnutritionalItemModel(
        image: ImageConstant.imgImage3.obs,
        nutritional: "Nutritional Drinks".obs),
    GridnutritionalItemModel(
        image: ImageConstant.imgImage5.obs,
        nutritional: "Vitamins & Supplement".obs),
    GridnutritionalItemModel(
        image: ImageConstant.imgImage6.obs,
        nutritional: "Healthcare Devices".obs),
    GridnutritionalItemModel(
        image: ImageConstant.imgImage7.obs, nutritional: "Homeopathy".obs),
    GridnutritionalItemModel(
        image: ImageConstant.imgImage8.obs, nutritional: "Diabetes Care".obs),
    GridnutritionalItemModel()
  ]);

  Rx<List<SlideruptoItemModel>> slideruptoItemList = Rx([
    SlideruptoItemModel(
        upto: "Upto".obs,
        eighty: "80%".obs,
        offer: "Offer*".obs,
        onhealth: "On Health Products".obs,
        homeopathy: "Homeopathy,Ayurvedic, Presonal Care & More".obs),
    SlideruptoItemModel(
        upto: "Upto".obs,
        eighty: "80%".obs,
        offer: "Offer*".obs,
        onhealth: "On Health Products".obs,
        homeopathy: "Homeopathy,Ayurvedic, Presonal Care & More".obs),
    SlideruptoItemModel(
        upto: "Upto".obs,
        eighty: "80%".obs,
        offer: "Offer*".obs,
        onhealth: "On Health Products".obs,
        homeopathy: "Homeopathy,Ayurvedic, Presonal Care & More".obs),
    SlideruptoItemModel(
        upto: "Upto".obs,
        eighty: "80%".obs,
        offer: "Offer*".obs,
        onhealth: "On Health Products".obs,
        homeopathy: "Homeopathy,Ayurvedic, Presonal Care & More".obs),
  ]);

  Rx<List<ListaccucheckItemModel>> listaccucheckItemModel = Rx([
    ListaccucheckItemModel(
        accucheck: "Accu-Check Instant".obs,
        descriptionduis:
            "Description duis aute irure dolor in reprehenderit in voluptate velit."
                .obs),
    ListaccucheckItemModel(
        accucheck: "Accu-Check Instant".obs,
        descriptionduis:
            "Description duis aute irure dolor in reprehenderit in voluptate velit."
                .obs),
    ListaccucheckItemModel(
        accucheck: "Accu-Check Instant".obs,
        descriptionduis:
            "Description duis aute irure dolor in reprehenderit in voluptate velit."
                .obs),
    ListaccucheckItemModel(
        accucheck: "Accu-Check Instant".obs,
        descriptionduis:
            "Description duis aute irure dolor in reprehenderit in voluptate velit."
                .obs),
  ]);

  Rx<List<ListnutritionItemModel>> listnutritionItemModel = Rx([
    ListnutritionItemModel(
        nutritional: ImageConstant.imgImage3.obs,
        nutritional1: "Nutritional Drinks".obs),
    ListnutritionItemModel(
        nutritional: ImageConstant.imgImage5.obs,
        nutritional1: "Vitamins & Supplement".obs),
    ListnutritionItemModel(
        nutritional: ImageConstant.imgImage6.obs,
        nutritional1: "Healthcare Devices".obs),
    ListnutritionItemModel(
        nutritional: ImageConstant.imgImage7.obs,
        nutritional1: "Homeopathy".obs),
    ListnutritionItemModel(
        nutritional: ImageConstant.imgImage8.obs,
        nutritional1: "Diabetes Care".obs),
    ListnutritionItemModel()
  ]);

  Rx<List<ListFaceWashItemModel>> listfacewashItemList = Rx([
    ListFaceWashItemModel(
        faceWashOne: ImageConstant.imgImage84x84.obs, label: "Face Wash".obs),
    ListFaceWashItemModel(
        faceWashOne: ImageConstant.imgImage1.obs, label: "Dressing".obs),
    ListFaceWashItemModel(
        faceWashOne: ImageConstant.imgImage9.obs, label: "pain relief".obs),
    ListFaceWashItemModel(
        faceWashOne: ImageConstant.imgImage11.obs, label: "Femine Hygiene".obs),
  ]);
}
