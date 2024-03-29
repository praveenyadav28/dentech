import '../controller/article_controller.dart';
import '../models/ninetyfour_item_model.dart';
import 'package:denttech_plus/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NinetyfourItemWidget extends StatelessWidget {
  NinetyfourItemWidget(
    this.ninetyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetyfourItemModel ninetyfourItemModelObj;

  var controller = Get.find<ArticleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: ninetyfourItemModelObj.image!.value,
              height: 59.adaptSize,
              width: 59.adaptSize,
              radius: BorderRadius.circular(
                6.h,
              ),
              margin: EdgeInsets.only(bottom: 1.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 189.h,
                  child: Obx(
                    () => Text(
                      ninetyfourItemModelObj.theHealthiest!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.labelLargeOnPrimarySemiBold.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        ninetyfourItemModelObj.date!.value,
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                    Container(
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(
                        left: 10.h,
                        top: 3.v,
                        bottom: 4.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          ninetyfourItemModelObj.time!.value,
                          style: CustomTextStyles.labelSmallCyan300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkCyan300,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 7.h,
              bottom: 38.v,
            ),
          ),
        ],
      ),
    );
  }
}
