import '../../../core/app_export.dart';

/// This class is used in the [messagelist_item_widget] screen.
class MessagelistItemModel {
  MessagelistItemModel({
    this.drMarcusHorizon,
    this.drMarcusHorizon1,
    this.time,
    this.iDonTHaveAny,
    this.id,
  }) {
    drMarcusHorizon = drMarcusHorizon ?? Rx(ImageConstant.imgProfileThumbnail);
    drMarcusHorizon1 = drMarcusHorizon1 ?? Rx("Dr. Marcus Horizon");
    time = time ?? Rx("10.24");
    iDonTHaveAny =
        iDonTHaveAny ?? Rx("I don,t have any fever, but headchace...");
    id = id ?? Rx("");
  }

  Rx<String>? drMarcusHorizon;

  Rx<String>? drMarcusHorizon1;

  Rx<String>? time;

  Rx<String>? iDonTHaveAny;

  Rx<String>? id;
}
