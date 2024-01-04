import '../dashboard_screen/widgets/doctor_item_widget.dart';
import '../dashboard_screen/widgets/eighteen_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/doctor_item_model.dart';
import 'models/eighteen_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/presentation/message_tab_container_screen/message_tab_container_screen.dart';
import 'package:denttech_plus/presentation/schedule_tab_container_screen/schedule_tab_container_screen.dart';
import 'package:denttech_plus/presentation/settigns_screen/settigns_screen.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_title.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_trailing_image.dart';
import 'package:denttech_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:denttech_plus/widgets/custom_bottom_bar.dart';
import 'package:denttech_plus/widgets/custom_elevated_button.dart';
import 'package:denttech_plus/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends GetWidget<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 20.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(right: 20.h),
                                        child: CustomSearchView(
                                            controller:
                                                controller.searchController,
                                            hintText:
                                                "msg_search_doctor_drugs".tr)),
                                    SizedBox(height: 20.v),
                                    _buildEighteen(),
                                    SizedBox(height: 20.v),
                                    _buildOfferBanner(),
                                    SizedBox(height: 42.v),
                                    _buildTopDoctorSeeAll(),
                                    SizedBox(height: 10.v),
                                    _buildDoctor(),
                                    SizedBox(height: 31.v),
                                    _buildHealtArticleSee(),
                                    SizedBox(height: 12.v),
                                    _buildTwentyFour()
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 84.v,
        title: AppbarTitle(
            text: "msg_find_your_desire".tr,
            margin: EdgeInsets.only(left: 20.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLockOnprimary,
              margin: EdgeInsets.fromLTRB(20.h, 14.v, 20.h, 25.v))
        ]);
  }

  /// Section Widget
  Widget _buildEighteen() {
    return SizedBox(
        height: 71.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(right: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 17.h);
            },
            itemCount: controller
                .dashboardModelObj.value.eighteenItemList.value.length,
            itemBuilder: (context, index) {
              EighteenItemModel model = controller
                  .dashboardModelObj.value.eighteenItemList.value[index];
              return EighteenItemWidget(model, onTapBtnUser: () {
                onTapBtnUser();
              });
            })));
  }

  /// Section Widget
  Widget _buildOfferBanner() {
    return Container(
        width: 335.h,
        margin: EdgeInsets.only(right: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 12.v),
        decoration: AppDecoration.fillTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              SizedBox(
                  width: 168.h,
                  child: Text("msg_early_protection".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMedium18
                          .copyWith(height: 1.50))),
              SizedBox(height: 7.v),
              CustomElevatedButton(
                  height: 26.v,
                  width: 106.h,
                  text: "lbl_learn_more".tr,
                  buttonStyle: CustomButtonStyles.fillCyan,
                  buttonTextStyle: CustomTextStyles.labelLargePrimarySemiBold)
            ]));
  }

  /// Section Widget
  Widget _buildTopDoctorSeeAll() {
    return Padding(
        padding: EdgeInsets.only(right: 20.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_top_doctor".tr, style: theme.textTheme.titleMedium),
              GestureDetector(
                  onTap: () {
                    onTapTxtSeeAll();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Text("lbl_see_all".tr,
                          style: CustomTextStyles.labelLargeCyan300)))
            ]));
  }

  /// Section Widget
  Widget _buildDoctor() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 173.v,
            child: Obx(() => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 14.h);
                },
                itemCount: controller
                    .dashboardModelObj.value.doctorItemList.value.length,
                itemBuilder: (context, index) {
                  DoctorItemModel model = controller
                      .dashboardModelObj.value.doctorItemList.value[index];
                  return DoctorItemWidget(model, onTapDoctor: () {
                    onTapDoctor();
                  });
                }))));
  }

  /// Section Widget
  Widget _buildHealtArticleSee() {
    return Padding(
        padding: EdgeInsets.only(right: 23.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_healt_article".tr, style: theme.textTheme.titleMedium),
          GestureDetector(
              onTap: () {
                onTapTxtSeeAll1();
              },
              child: Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text("lbl_see_all".tr,
                      style: CustomTextStyles.labelLargeCyan300)))
        ]));
  }

  /// Section Widget
  Widget _buildTwentyFour() {
    return Container(
        margin: EdgeInsets.only(right: 20.h),
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgThumbnail,
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  radius: BorderRadius.circular(6.h)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 179.h,
                            child: Text("msg_the_25_healthiest".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelMediumOnPrimary
                                    .copyWith(height: 1.50))),
                        SizedBox(height: 8.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_jun_10_2021".tr,
                                  style: theme.textTheme.labelSmall),
                              Container(
                                  height: 2.adaptSize,
                                  width: 2.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 5.h, top: 3.v, bottom: 4.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.gray500,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_5min_read".tr,
                                      style: theme.textTheme.labelSmall))
                            ])
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messageTabContainerScreen;
      case BottomBarEnum.Appointment:
        return AppRoutes.scheduleTabContainerScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.settignsScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messageTabContainerScreen:
        return MessageTabContainerScreen();
      case AppRoutes.scheduleTabContainerScreen:
        return ScheduleTabContainerScreen();
      case AppRoutes.settignsScreen:
        return SettignsScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the drDetailsScreen when the action is triggered.
  onTapDoctor() {
    Get.toNamed(AppRoutes.drDetailsScreen);
  }

  /// Navigates to the pharmacyScreen when the action is triggered.
  onTapBtnUser() {
    Get.toNamed(AppRoutes.pharmacyScreen);
  }

  /// Navigates to the drListScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.drListScreen,
    );
  }

  /// Navigates to the articleScreen when the action is triggered.
  onTapTxtSeeAll1() {
    Get.toNamed(
      AppRoutes.articleScreen,
    );
  }
}
