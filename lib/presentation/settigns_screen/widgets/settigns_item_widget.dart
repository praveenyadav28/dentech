import '../controller/settigns_controller.dart';
import '../models/settigns_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettignsItemWidget extends StatelessWidget {
  SettignsItemWidget(
    this.settignsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SettignsItemModel settignsItemModelObj;

  var controller = Get.find<SettignsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: settignsItemModelObj.heartrate!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              settignsItemModelObj.heartRate!.value,
              style: CustomTextStyles.labelMediumCyan100,
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              settignsItemModelObj.heartRateCount!.value,
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
        ],
      ),
    );
  }
}
