import '../../../core/app_export.dart';
import 'messagelist_item_model.dart';

/// This class defines the variables used in the [message_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageModel {
  Rx<List<MessagelistItemModel>> messagelistItemList = Rx([
    MessagelistItemModel(
        drMarcusHorizon: ImageConstant.imgProfileThumbnail.obs,
        drMarcusHorizon1: "Dr. Marcus Horizon".obs,
        time: "10.24".obs,
        iDonTHaveAny: "I don,t have any fever, but headchace...".obs),
    MessagelistItemModel(
        drMarcusHorizon: ImageConstant.imgProfileThumbnail50x50.obs,
        drMarcusHorizon1: "Dr. Alysa Hana".obs,
        time: "09:04".obs,
        iDonTHaveAny: "Hello, How can i help you?".obs),
    MessagelistItemModel(
        drMarcusHorizon: ImageConstant.imgProfileThumbnail1.obs,
        drMarcusHorizon1: "Dr. Maria Elena".obs,
        time: "08:57".obs,
        iDonTHaveAny: "Do you have fever?".obs)
  ]);
}
