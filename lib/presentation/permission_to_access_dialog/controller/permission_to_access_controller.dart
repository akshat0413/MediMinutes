import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'package:mediminutes/data/models/selectionPopupModel/selection_popup_model.dart';
import 'package:mediminutes/presentation/permission_to_access_dialog/models/permission_to_access_model.dart';

///A controller class for for the PermissionToAccessDialog.
///
///This class manages the state of the PermissionToAccessDialog, including the current permissionToAccessModelObj
class PremissionToAccessController extends GetxController {
  Rx<PermissionToAccessModel> permissionToAccessModelObj =
      PermissionToAccessModel().obs;
  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element
        in permissionToAccessModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    permissionToAccessModelObj.value.dropdownItemList.refresh();
    ;
  }

  onSelection1(dynamic value) {
    for (var element
        in permissionToAccessModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    permissionToAccessModelObj.value.dropdownItemList1.refresh();
    ;
  }
}
