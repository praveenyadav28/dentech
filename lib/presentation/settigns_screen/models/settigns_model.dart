import '../../../core/app_export.dart';
import 'settigns_item_model.dart';

/// This class defines the variables used in the [settigns_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettignsModel {
  Rx<List<SettignsItemModel>> settignsItemList = Rx([
    SettignsItemModel(
        heartrate: ImageConstant.imgLocationPrimary.obs,
        heartRate: "Heart rate".obs,
        heartRateCount: "215bpm".obs),
    SettignsItemModel(
        heartrate: ImageConstant.imgReply.obs,
        heartRate: "Calories".obs,
        heartRateCount: "756cal".obs),
    SettignsItemModel(
        heartrate: ImageConstant.imgSettings.obs,
        heartRate: "Weight".obs,
        heartRateCount: "103lbs".obs)
  ]);
}
