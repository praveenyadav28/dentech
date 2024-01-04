import '../controller/dashboard_controller.dart';
import '../models/doctor_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorItemWidget extends StatelessWidget {
  DoctorItemWidget(
    this.doctorItemModelObj, {
    Key? key,
    this.onTapDoctor,
  }) : super(
          key: key,
        );

  DoctorItemModel doctorItemModelObj;

  var controller = Get.find<DashboardController>();

  VoidCallback? onTapDoctor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapDoctor!.call();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.outlineTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 11.v),
                Obx(
                  () => CustomImageView(
                    imagePath: doctorItemModelObj.drMarcusHorizo!.value,
                    height: 68.adaptSize,
                    width: 68.adaptSize,
                    radius: BorderRadius.circular(
                      34.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Obx(
                    () => Text(
                      doctorItemModelObj.drMarcusHorizo1!.value,
                      style: CustomTextStyles.labelLargeOnPrimarySemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Obx(
                    () => Text(
                      doctorItemModelObj.chardiologist!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: Obx(
                          () => Text(
                            doctorItemModelObj.ratting!.value,
                            style: CustomTextStyles.labelSmallCyan300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          top: 3.v,
                        ),
                        child: Obx(
                          () => Text(
                            doctorItemModelObj.distance!.value,
                            style: CustomTextStyles.labelSmallBluegray200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
