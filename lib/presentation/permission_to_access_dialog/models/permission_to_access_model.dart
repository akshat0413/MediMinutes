import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/data/models/selectionPopupModel/selection_popup_model.dart';

/// this class define the variables used in the [permission_to_aceess_dialoge],
///and is typically used to hold data that is passed btw different parts of the app.

//ignore_for_file: must_be_immutable
class PermissionToAccessModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(id: 1, title: "item One", isSelected: true),
    SelectionPopupModel(
      id: 1,
      title: "item Two",
    ),
    SelectionPopupModel(id: 1, title: "item Three")
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(id: 1, title: "item One", isSelected: true),
    SelectionPopupModel(
      id: 1,
      title: "item Two",
    ),
    SelectionPopupModel(id: 1, title: "item Three")
  ]);
}
