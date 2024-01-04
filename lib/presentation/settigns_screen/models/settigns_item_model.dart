import '../../../core/app_export.dart';

/// This class is used in the [settigns_item_widget] screen.
class SettignsItemModel {
  SettignsItemModel({
    this.heartrate,
    this.heartRate,
    this.heartRateCount,
    this.id,
  }) {
    heartrate = heartrate ?? Rx(ImageConstant.imgLocationPrimary);
    heartRate = heartRate ?? Rx("Heart rate");
    heartRateCount = heartRateCount ?? Rx("215bpm");
    id = id ?? Rx("");
  }

  Rx<String>? heartrate;

  Rx<String>? heartRate;

  Rx<String>? heartRateCount;

  Rx<String>? id;
}
