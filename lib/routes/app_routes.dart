import 'package:flutter/material.dart';
import '../presentation/welcome_screen_container_screen/welcome_screen_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreenPage = '/welcome_screen_page';

  static const String welcomeScreenContainerScreen =
      '/welcome_screen_container_screen';

  static const String welcomeScreenTabContainerPage =
      '/welcome_screen_tab_container_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreenContainerScreen: (context) => WelcomeScreenContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
