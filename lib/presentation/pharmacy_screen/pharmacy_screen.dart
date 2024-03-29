import '../pharmacy_screen/widgets/drugs1_item_widget.dart';
import '../pharmacy_screen/widgets/drugs_item_widget.dart';
import 'controller/pharmacy_controller.dart';
import 'models/drugs1_item_model.dart';
import 'models/drugs_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_trailing_image.dart';
import 'package:denttech_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:denttech_plus/widgets/custom_elevated_button.dart';
import 'package:denttech_plus/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class PharmacyScreen extends GetWidget<PharmacyController> {
  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "msg_search_drug_category".tr)),
                  SizedBox(height: 25.v),
                  _buildOfferBanner(),
                  SizedBox(height: 52.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: _buildProductOnSale(
                          productOnSaleText: "lbl_popular_product".tr,
                          seeAllText: "lbl_see_all".tr)),
                  SizedBox(height: 23.v),
                  _buildDrugs(),
                  SizedBox(height: 22.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: _buildProductOnSale(
                          productOnSaleText: "lbl_product_on_sale".tr,
                          seeAllText: "lbl_see_all".tr)),
                  SizedBox(height: 11.v),
                  _buildDrugs1()
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
        title: AppbarSubtitle(text: "lbl_pharmacy".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v),
              onTap: () {
                onTapCart();
              })
        ]);
  }

  /// Section Widget
  Widget _buildOfferBanner() {
    return Container(
        width: 335.h,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
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
                  width: 160.h,
                  child: Text("msg_order_quickly_w".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMedium18
                          .copyWith(height: 1.50))),
              SizedBox(height: 7.v),
              CustomElevatedButton(
                  height: 26.v,
                  width: 155.h,
                  text: "msg_upload_prescription".tr,
                  buttonStyle: CustomButtonStyles.fillCyan,
                  buttonTextStyle: CustomTextStyles.labelLargePrimarySemiBold)
            ]));
  }

  /// Section Widget
  Widget _buildDrugs() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 165.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 21.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 21.h);
                },
                itemCount: controller
                    .pharmacyModelObj.value.drugsItemList.value.length,
                itemBuilder: (context, index) {
                  DrugsItemModel model = controller
                      .pharmacyModelObj.value.drugsItemList.value[index];
                  return DrugsItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildDrugs1() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 165.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 21.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 18.h);
                },
                itemCount: controller
                    .pharmacyModelObj.value.drugs1ItemList.value.length,
                itemBuilder: (context, index) {
                  Drugs1ItemModel model = controller
                      .pharmacyModelObj.value.drugs1ItemList.value[index];
                  return Drugs1ItemWidget(model);
                }))));
  }

  /// Common widget
  Widget _buildProductOnSale({
    required String productOnSaleText,
    required String seeAllText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(productOnSaleText,
          style: CustomTextStyles.titleMediumOnPrimaryContainer_1
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(seeAllText,
              style: CustomTextStyles.labelLargeCyan300
                  .copyWith(color: appTheme.cyan300)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapCart() {
    Get.toNamed(
      AppRoutes.cartScreen,
    );
  }
}
