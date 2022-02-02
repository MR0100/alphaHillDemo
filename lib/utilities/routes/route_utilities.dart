import 'package:alpha_hill_demo/src/mvc/counter/bindings/counter_bindings.dart';
import 'package:alpha_hill_demo/src/mvc/counter/view/counter_screen.dart';
import 'package:alpha_hill_demo/src/mvc/profile/report_profile/binding/report_profile_binding.dart';
import 'package:alpha_hill_demo/src/mvc/profile/report_profile/view/report_profile_screen.dart';
import 'package:alpha_hill_demo/src/mvc/splash/view/splash_screen.dart';
import 'package:alpha_hill_demo/src/mvc/users/bindings/user_bindings.dart';
import 'package:alpha_hill_demo/src/mvc/users/view/user_screen.dart';
import 'package:get/get.dart';

/// All the routes and pages used in the application are used in this class.
class RouteUtilities {
  /// Define all the routes used in the application.
  /// routes are basically, all the screens and pages for the navigation.
  /// we are providing default two routes.
  /// one is for the root and another one is for splashScreen.
  static String root = "/";
  static String splashScreen = "/splashScreen";
  static String counterScreen = "/counterScreen";
  static String userScreen = "/userScreen";
  static String reportProfileScreen = "/reportProfileScreen";

  /// TODO : MENTION ALL THE PAGES IN THIS FILE FOR THE NAVIGATION.
  ///
  /// Ex. static String pageName = "/pageName";

  static List<GetPage> pages = [
    GetPage(
      name: root,
      page: () => ReportProfileScreen(),
      bindings: _bind(
        bindings: [
          ReportProfileBinding(),
        ],
      ),
    ),
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: counterScreen,
      page: () => CounterScreen(),
      bindings: _bind(
        bindings: [
          CounterBindings(),
        ],
      ),
    ),
    GetPage(
      name: userScreen,
      page: () => const UserScreen(),
      bindings: _bind(
        bindings: [
          UserBindings(),
        ],
      ),
    ),
    GetPage(
      name: reportProfileScreen,
      page: () => ReportProfileScreen(),
      bindings: _bind(
        bindings: [
          ReportProfileBinding(),
        ],
      ),
    )
  ];

  /// Bind default controllers that are used in every screens.
  static List<Bindings> _bind({required List<Bindings> bindings}) {
    /// in the list there will be default controllers.
    bindings.addAll([]);
    return bindings;
  }
}
