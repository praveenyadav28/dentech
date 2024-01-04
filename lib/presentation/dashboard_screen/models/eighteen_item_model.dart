import '../../../core/app_export.dart';

/// This class is used in the [eighteen_item_widget] screen.
class EighteenItemModel {
  EighteenItemModel({
    this.user,
    this.id,
  }) {
    user = user ?? Rx(ImageConstant.imgUserPrimary);
    id = id ?? Rx("");
  }

  Rx<String>? user;

  Rx<String>? id;
}
