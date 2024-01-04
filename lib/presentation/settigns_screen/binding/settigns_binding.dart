import '../controller/settigns_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SettignsScreen.
///
/// This class ensures that the SettignsController is created when the
/// SettignsScreen is first loaded.
class SettignsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettignsController());
  }
}
