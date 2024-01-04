import '../controller/dr_list_controller.dart';
import '../models/doctorlist_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorlistItemWidget extends StatelessWidget {
  DoctorlistItemWidget(
    this.doctorlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DoctorlistItemModel doctorlistItemModelObj;

  var controller = Get.find<DrListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: doctorlistItemModelObj.drMarcusHorizon!.value,
              height: 111.adaptSize,
              width: 111.adaptSize,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 7.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    doctorlistItemModelObj.title!.value,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    doctorlistItemModelObj.chardiologist!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Obx(
                          () => Text(
                            doctorlistItemModelObj.ratting!.value,
                            style: CustomTextStyles.labelLargeCyan300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Obx(
                        () => Text(
                          doctorlistItemModelObj.distance!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
