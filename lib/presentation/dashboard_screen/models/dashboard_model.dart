import '../../../core/app_export.dart';
import 'eighteen_item_model.dart';
import 'doctor_item_model.dart';

/// This class defines the variables used in the [dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel {
  Rx<List<EighteenItemModel>> eighteenItemList = Rx([
    EighteenItemModel(user: ImageConstant.imgUserPrimary.obs),
    EighteenItemModel(user: ImageConstant.imgCalculator.obs),
    EighteenItemModel(user: ImageConstant.imgAmbulance.obs),
    EighteenItemModel(user: ImageConstant.imgArticalsIcon.obs)
  ]);

  Rx<List<DoctorItemModel>> doctorItemList = Rx([
    DoctorItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image.obs,
        drMarcusHorizo1: "Dr. Marcus Horizo".obs,
        chardiologist: "Chardiologist".obs,
        ratting: "4,7".obs,
        distance: "800m away".obs),
    DoctorItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image68x68.obs,
        drMarcusHorizo1: "Dr. Maria Elena".obs,
        chardiologist: "Psychologist".obs,
        ratting: "4,9".obs,
        distance: "1,5km away".obs),
    DoctorItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image1.obs,
        drMarcusHorizo1: "Dr. Stevi Jessi".obs,
        chardiologist: "Orthopedist".obs,
        ratting: "4,8".obs,
        distance: "2km away".obs)
  ]);
}
