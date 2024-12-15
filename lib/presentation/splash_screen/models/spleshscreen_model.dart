import '../../../core/app_export.dart';
import 'sliderview_item_model.dart';

class SpleshscreenModel {
  Rx<List<SliderviewItemModel>> sliderviewItemList =
      Rx(List.generate(1, (index) => SliderviewItemModel()));
}
