import 'package:smarthealth/widgets/app_bar/custom_app_bar.dart';
import 'package:smarthealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:smarthealth/widgets/app_bar/appbar_subtitle.dart';
import 'package:smarthealth/widgets/app_bar/appbar_title.dart';
import 'package:smarthealth/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:smarthealth/presentation/welcome_screen_page/welcome_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:smarthealth/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WelcomeScreenTabContainerPage extends StatefulWidget {
  const WelcomeScreenTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScreenTabContainerPageState createState() =>
      WelcomeScreenTabContainerPageState();
}

class WelcomeScreenTabContainerPageState
    extends State<WelcomeScreenTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              _buildTwentyTwo(context),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 7.v),
                        _buildTwentyThree(context),
                        SizedBox(height: 29.v),
                        Padding(
                          padding: EdgeInsets.only(left: 33.h),
                          child: Text(
                            "Doctors",
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        _buildTabview(context),
                        Expanded(
                          child: SizedBox(
                            height: 469.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                WelcomeScreenPage(),
                                WelcomeScreenPage(),
                                WelcomeScreenPage(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 97.v,
        width: 344.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup2,
                height: 97.v,
                width: 138.h,
                alignment: Alignment.centerRight,
              ),
            ),
            CustomAppBar(
              leadingWidth: 53.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgTelevision,
                margin: EdgeInsets.only(
                  left: 31.h,
                  top: 17.v,
                  bottom: 10.v,
                ),
              ),
              centerTitle: true,
              title: Column(
                children: [
                  AppbarSubtitle(
                    text: "Hello,",
                    margin: EdgeInsets.only(right: 71.h),
                  ),
                  AppbarTitle(
                    text: "Emmanuel !",
                  ),
                ],
              ),
              actions: [
                AppbarTrailingCircleimage(
                  imagePath: ImageConstant.imgEllipse2,
                  margin: EdgeInsets.only(
                    left: 33.h,
                    top: 6.v,
                    right: 33.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 42.v,
        width: 311.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(18.h, 9.v, 21.h, 9.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRewind,
                      height: 22.v,
                      width: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "Search Doctor",
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 21.v,
                      width: 22.h,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 42.v,
                width: 311.h,
                decoration: BoxDecoration(
                  color: appTheme.gray6003d,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 34.v,
      width: 337.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: appTheme.amber600,
        tabs: [
          Tab(
            child: Text(
              "Psychology",
            ),
          ),
          Tab(
            child: Text(
              "Cardiology",
            ),
          ),
          Tab(
            child: Text(
              "Gastrology",
            ),
          ),
        ],
      ),
    );
  }
}
