import 'controller/ambulance_controller.dart';
import 'dart:async';
import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:denttech_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:denttech_plus/widgets/custom_elevated_button.dart';
import 'package:denttech_plus/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore_for_file: must_be_immutable
class AmbulanceScreen extends GetWidget<AmbulanceController> {
  AmbulanceScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                height: 724.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Stack(alignment: Alignment.center, children: [
                  _buildMap(),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10.h, 28.v, 10.h, 23.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.h),
                                child: CustomSearchView(
                                    controller: controller.searchController,
                                    hintText: "msg_search_location".tr)),
                            SizedBox(height: 63.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgMapPointsImage,
                                height: 331.v,
                                width: 355.h),
                            Spacer(),
                            _buildLocation()
                          ])))
                ]))));
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
        title: AppbarSubtitle(text: "lbl_ambulance".tr));
  }

  /// Section Widget
  Widget _buildMap() {
    return SizedBox(
        height: 710.v,
        width: double.maxFinite,
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
                zoom: 14.4746),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false));
  }

  /// Section Widget
  Widget _buildLocation() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(right: 32.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLocationRed300,
                            height: 26.v,
                            width: 28.h,
                            margin: EdgeInsets.only(top: 3.v, bottom: 11.v)),
                        Expanded(
                            child: Container(
                                width: 255.h,
                                margin: EdgeInsets.only(left: 18.h),
                                child: Text("msg_2640_cabin_creek".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium!
                                        .copyWith(height: 1.50))))
                      ])),
              SizedBox(height: 9.v),
              CustomElevatedButton(text: "msg_confirm_location".tr)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
