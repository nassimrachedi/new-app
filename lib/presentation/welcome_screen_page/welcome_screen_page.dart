import 'package:smarthealth/widgets/custom_rating_bar.dart';
import 'package:smarthealth/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smarthealth/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WelcomeScreenPage extends StatefulWidget {
  const WelcomeScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScreenPageState createState() => WelcomeScreenPageState();
}

class WelcomeScreenPageState extends State<WelcomeScreenPage>
    with AutomaticKeepAliveClientMixin<WelcomeScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 18.v),
                SizedBox(
                  height: 423.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgNurse1,
                        height: 175.v,
                        width: 221.h,
                        alignment: Alignment.topLeft,
                      ),
                      _buildEighteen(context),
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

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 242.v,
              width: 353.h,
              margin: EdgeInsets.only(left: 2.h),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgNurse21,
                      height: 138.v,
                      width: 178.h,
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 137.v,
                      width: 155.h,
                      margin: EdgeInsets.only(
                        left: 21.h,
                        top: 24.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.teal60001,
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black900.withOpacity(0.16),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 189.v,
                      width: 121.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle9,
                              height: 112.v,
                              width: 114.h,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 14.v),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Opacity(
                                    opacity: 0.6,
                                    child: Text(
                                      "Dr. Margret Dina",
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.6,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 5.h),
                                      child: Text(
                                        "Sr. Psychologist",
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  Padding(
                                    padding: EdgeInsets.only(right: 14.h),
                                    child: CustomRatingBar(
                                      initialRating: 4,
                                    ),
                                  ),
                                  SizedBox(height: 4.v),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(right: 153.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.h,
                        vertical: 13.v,
                      ),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 47.v,
                            width: 144.h,
                            margin: EdgeInsets.only(left: 7.h),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "Dr. Mosia Gloria",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Sr. Psychologist",
                                    style:
                                        CustomTextStyles.bodyMediumBlack900_1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomRatingBar(
                                    initialRating: 0,
                                    itemSize: 15,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 8.v,
                                    width: 16.h,
                                    margin: EdgeInsets.only(
                                      left: 27.h,
                                      top: 4.v,
                                      bottom: 3.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 6.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14.v),
            Container(
              margin: EdgeInsets.only(right: 21.h),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.v,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Instant Appointment ",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Container(
                          width: 146.h,
                          margin: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumRobotoBlack900,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        CustomElevatedButton(
                          width: 105.h,
                          text: "Read more",
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUndrawMedicineB1ol,
                    height: 91.v,
                    width: 128.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 14.v,
                      right: 2.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
