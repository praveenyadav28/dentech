import 'controller/message_tab_container_controller.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/presentation/message_page/message_page.dart';
import 'package:denttech_plus/presentation/message_tab_container_screen/message_tab_container_screen.dart';
import 'package:denttech_plus/presentation/schedule_tab_container_screen/schedule_tab_container_screen.dart';
import 'package:denttech_plus/presentation/settigns_screen/settigns_screen.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_title.dart';
import 'package:denttech_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:denttech_plus/widgets/custom_bottom_bar.dart';
import 'package:denttech_plus/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessageTabContainerScreen
    extends GetWidget<MessageTabContainerController> {
  const MessageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 46.v),
              Column(
                children: [
                  _buildTabview(),
                  SizedBox(
                    height: 575.v,
                    child: TabBarView(
                      controller: controller.tabviewController,
                      children: [
                        MessagePage(),
                        MessagePage(),
                        MessagePage(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.v,
      title: AppbarTitle(
        text: "lbl_messages".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        Container(
          height: 29.v,
          width: 20.h,
          margin: EdgeInsets.fromLTRB(14.h, 12.v, 14.h, 9.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMoreIcon,
                height: 16.v,
                width: 4.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 13.v,
                  right: 6.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgComponent5Onprimary,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(bottom: 9.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 46.v,
      width: 335.h,
      decoration: BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.cyan300,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_group".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_private".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 55,
      width: 55,
      backgroundColor: appTheme.cyan300,
      child: CustomImageView(
        imagePath: ImageConstant.imgUserPrimary55x55,
        height: 27.5.v,
        width: 27.5.h,
      ),
    );
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
}
