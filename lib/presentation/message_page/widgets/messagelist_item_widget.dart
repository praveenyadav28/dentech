import '../controller/message_controller.dart';
import '../models/messagelist_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessagelistItemWidget extends StatelessWidget {
  MessagelistItemWidget(
    this.messagelistItemModelObj, {
    Key? key,
    this.onTapChat,
  }) : super(
          key: key,
        );

  MessagelistItemModel messagelistItemModelObj;

  var controller = Get.find<MessageController>();

  VoidCallback? onTapChat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapChat!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: messagelistItemModelObj.drMarcusHorizon!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 5.v,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            messagelistItemModelObj.drMarcusHorizon1!.value,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Obx(
                            () => Text(
                              messagelistItemModelObj.time!.value,
                              style: CustomTextStyles.bodySmallOnPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          messagelistItemModelObj.iDonTHaveAny!.value,
                          style: CustomTextStyles.bodySmallBluegray600,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 9.v,
                        width: 14.h,
                        margin: EdgeInsets.only(
                          left: 30.h,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
