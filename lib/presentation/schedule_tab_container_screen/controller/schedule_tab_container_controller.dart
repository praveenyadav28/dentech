import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/presentation/schedule_tab_container_screen/models/schedule_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ScheduleTabContainerScreen.
///
/// This class manages the state of the ScheduleTabContainerScreen, including the
/// current scheduleTabContainerModelObj
class ScheduleTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ScheduleTabContainerModel> scheduleTabContainerModelObj =
      ScheduleTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
