import '../controller/message_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageTabContainerScreen.
///
/// This class ensures that the MessageTabContainerController is created when the
/// MessageTabContainerScreen is first loaded.
class MessageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageTabContainerController());
  }
}
