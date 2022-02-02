import 'package:alpha_hill_demo/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() {
  /// Initializing the instance of applicationStorageKey.
  GetStorage.init(PreferenceKey.applicationStorageKey);

  /// Assigning the instance of Getstorage to the varialbe to use in the application.
  VariableUtilities.prefs = GetStorage(PreferenceKey.applicationStorageKey);
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    /// initialize the theme to use in the application.
    ThemeManager.initializeTheme();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:
          false, // It will hide the badge of debuggin in the application.
      initialRoute:
          RouteUtilities.root, // It is the first page of an application.
      getPages: RouteUtilities
          .pages, // It defines all the pages used in the application.
    );
  }
}
