import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/presentation/message_tab_container_screen/models/message_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MessageTabContainerScreen.
///
/// This class manages the state of the MessageTabContainerScreen, including the
/// current messageTabContainerModelObj
class MessageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MessageTabContainerModel> messageTabContainerModelObj =
      MessageTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
