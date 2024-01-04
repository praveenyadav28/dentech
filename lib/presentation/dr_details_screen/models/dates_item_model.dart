import '../../../core/app_export.dart';

/// This class is used in the [dates_item_widget] screen.
class DatesItemModel {
  DatesItemModel({
    this.mon,
    this.date,
    this.id,
  }) {
    mon = mon ?? Rx("Mon");
    date = date ?? Rx("21");
    id = id ?? Rx("");
  }

  Rx<String>? mon;

  Rx<String>? date;

  Rx<String>? id;
}
