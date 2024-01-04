import '../controller/dr_details_controller.dart';
import '../models/dates_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DatesItemWidget extends StatelessWidget {
  DatesItemWidget(
    this.datesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DatesItemModel datesItemModelObj;

  var controller = Get.find<DrDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  datesItemModelObj.mon!.value,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.center,
                child: Obx(
                  () => Text(
                    datesItemModelObj.date!.value,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
