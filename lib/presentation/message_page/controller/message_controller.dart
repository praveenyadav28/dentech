import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/presentation/message_page/models/message_model.dart';

/// A controller class for the MessagePage.
///
/// This class manages the state of the MessagePage, including the
/// current messageModelObj
class MessageController extends GetxController {
  MessageController(this.messageModelObj);

  Rx<MessageModel> messageModelObj;
}
