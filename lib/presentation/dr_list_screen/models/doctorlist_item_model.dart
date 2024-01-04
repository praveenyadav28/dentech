import '../../../core/app_export.dart';

/// This class is used in the [doctorlist_item_widget] screen.
class DoctorlistItemModel {
  DoctorlistItemModel({
    this.drMarcusHorizon,
    this.title,
    this.chardiologist,
    this.ratting,
    this.distance,
    this.id,
  }) {
    drMarcusHorizon = drMarcusHorizon ?? Rx(ImageConstant.imgProfilePic);
    title = title ?? Rx("Dr. Marcus Horizon");
    chardiologist = chardiologist ?? Rx("Chardiologist");
    ratting = ratting ?? Rx("4.7");
    distance = distance ?? Rx("800m away");
    id = id ?? Rx("");
  }

  Rx<String>? drMarcusHorizon;

  Rx<String>? title;

  Rx<String>? chardiologist;

  Rx<String>? ratting;

  Rx<String>? distance;

  Rx<String>? id;
}
