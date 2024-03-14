import 'package:smarthealth/presentation/welcome_screen_tab_container_page/welcome_screen_tab_container_page.dart';
import 'package:smarthealth/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:smarthealth/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WelcomeScreenContainerScreen extends StatelessWidget {
  WelcomeScreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.welcomeScreenTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.welcomeScreenTabContainerPage;
      case BottomBarEnum.Rewindwhitea700:
        return "/";
      case BottomBarEnum.Vector:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.welcomeScreenTabContainerPage:
        return WelcomeScreenTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
