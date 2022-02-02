import 'dart:async';

import 'package:alpha_hill_demo/utilities/routes/route_utilities.dart';
import 'package:alpha_hill_demo/utilities/settings/preference_key.dart';
import 'package:alpha_hill_demo/utilities/settings/variable_utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  /// Start Timer...
  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      timer.cancel();
      bool isLogin =
          VariableUtilities.prefs.read<bool>(PreferenceKey.isLogin) ?? false;
      if (isLogin) {
        /// TODO: YOU HAVE TO CHANGE THE NAME OF HOME SCREEN...
        /// if user is logged in then redirect to the homescreen.
        Get.toNamed(RouteUtilities.counterScreen);
      } else {
        /// TODO: YOU HAVE TO CHANGE THE NAME OF LOGIN SCREEN...
        /// if user is not logged in then redirect to the loginscreen.
        Get.toNamed(RouteUtilities.counterScreen);
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// assign the value of screensize depending on the device to use in the application.
    VariableUtilities.screenSize = MediaQuery.of(context).size;
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
