import '../article_screen/widgets/ninetyfour_item_widget.dart';
import '../article_screen/widgets/topics_item_widget.dart';
import '../article_screen/widgets/trendings_item_widget.dart';
import 'controller/article_controller.dart';
import 'models/ninetyfour_item_model.dart';
import 'models/topics_item_model.dart';
import 'models/trendings_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:denttech_plus/widgets/app_bar/appbar_trailing_image.dart';
import 'package:denttech_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:denttech_plus/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends GetWidget<ArticleController> {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(children: [
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "msg_search_article".tr),
                  SizedBox(height: 23.v),
                  _buildPopularArticles(),
                  SizedBox(height: 23.v),
                  _buildTrendingArticles(),
                  SizedBox(height: 16.v),
                  _buildRelatedArticles(),
                  SizedBox(height: 5.v)
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
        title: AppbarSubtitle(text: "lbl_articles".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgOverflowMenu,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildPopularArticles() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_popular_articles".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer_1),
      SizedBox(height: 10.v),
      Obx(() => Wrap(
          runSpacing: 5.v,
          spacing: 5.h,
          children: List<Widget>.generate(
              controller.articleModelObj.value.topicsItemList.value.length,
              (index) {
            TopicsItemModel model =
                controller.articleModelObj.value.topicsItemList.value[index];
            return TopicsItemWidget(model);
          })))
    ]);
  }

  /// Section Widget
  Widget _buildTrendingArticles() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 2.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("msg_trending_articles".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer_1),
                Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Text("lbl_see_all".tr,
                        style: CustomTextStyles.labelLargeCyan300))
              ])),
      SizedBox(height: 11.v),
      SizedBox(
          height: 223.v,
          child: Obx(() => ListView.separated(
              padding: EdgeInsets.only(right: 12.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 17.h);
              },
              itemCount: controller
                  .articleModelObj.value.trendingsItemList.value.length,
              itemBuilder: (context, index) {
                TrendingsItemModel model = controller
                    .articleModelObj.value.trendingsItemList.value[index];
                return TrendingsItemWidget(model);
              })))
    ]);
  }

  /// Section Widget
  Widget _buildRelatedArticles() {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("msg_related_articles".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer_1),
                Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text("lbl_see_all".tr,
                        style: CustomTextStyles.labelLargeCyan300))
              ]),
              SizedBox(height: 12.v),
              Expanded(
                  child: Obx(() => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10.v);
                      },
                      itemCount: controller.articleModelObj.value
                          .ninetyfourItemList.value.length,
                      itemBuilder: (context, index) {
                        NinetyfourItemModel model = controller.articleModelObj
                            .value.ninetyfourItemList.value[index];
                        return NinetyfourItemWidget(model);
                      })))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
