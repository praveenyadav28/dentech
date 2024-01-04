import '../../../core/app_export.dart';
import 'dates_item_model.dart';
import 'timeslots_item_model.dart';

/// This class defines the variables used in the [dr_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DrDetailsModel {
  Rx<List<DatesItemModel>> datesItemList = Rx([
    DatesItemModel(mon: "Mon".obs, date: "21".obs),
    DatesItemModel(mon: "Tue".obs, date: "22".obs),
    DatesItemModel(mon: "Wed".obs, date: "23".obs),
    DatesItemModel(mon: "Thu".obs, date: "24".obs),
    DatesItemModel(mon: "Fri".obs, date: "25".obs),
    DatesItemModel(mon: "Sat".obs, date: "26".obs),
    DatesItemModel(mon: "Sat".obs, date: "26".obs)
  ]);

  Rx<List<TimeslotsItemModel>> timeslotsItemList =
      Rx(List.generate(9, (index) => TimeslotsItemModel()));
}
