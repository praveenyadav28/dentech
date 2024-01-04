import '../message_page/widgets/messagelist_item_widget.dart';
import 'controller/message_controller.dart';
import 'models/message_model.dart';
import 'models/messagelist_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessagePage({Key? key}) : super(key: key);

  MessageController controller = Get.put(MessageController(MessageModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    children: [SizedBox(height: 31.v), _buildMessageList()]))));
  }

  /// Section Widget
  Widget _buildMessageList() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 24.v);
                },
                itemCount: controller
                    .messageModelObj.value.messagelistItemList.value.length,
                itemBuilder: (context, index) {
                  MessagelistItemModel model = controller
                      .messageModelObj.value.messagelistItemList.value[index];
                  return MessagelistItemWidget(model, onTapChat: () {
                    onTapChat();
                  });
                }))));
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapChat() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
