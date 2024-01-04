import '../dr_list_screen/widgets/doctorlist_item_widget.dart';
import 'controller/dr_list_controller.dart';
import 'models/doctorlist_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_trailing_image.dart';
import 'package:denttech_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DrListScreen extends GetWidget<DrListController> {
  const DrListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.v);
                    },
                    itemCount: controller
                        .drListModelObj.value.doctorlistItemList.value.length,
                    itemBuilder: (context, index) {
                      DoctorlistItemModel model = controller
                          .drListModelObj.value.doctorlistItemList.value[index];
                      return DoctorlistItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_top_doctor".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgOverflowMenu,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
