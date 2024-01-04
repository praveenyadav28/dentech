import '../controller/schedule_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScheduleTabContainerScreen.
///
/// This class ensures that the ScheduleTabContainerController is created when the
/// ScheduleTabContainerScreen is first loaded.
class ScheduleTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleTabContainerController());
  }
}
