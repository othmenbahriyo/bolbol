import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:weather/app/constants/themes/dark_themes.dart';
import 'package:weather/app/constants/themes/light_themes.dart';
import 'package:weather/app/modules/home/bindings/home_binding.dart';
import 'package:weather/app/utils/theme/theme_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightThemes(),
        darkTheme: darkThemes(),
        themeMode: ThemeService().theme,
        title: "",
        home: GetMaterialApp(
          title: "Weather app",
          debugShowCheckedModeBanner: false,
          theme: lightThemes(),
          darkTheme: darkThemes(),
          themeMode: ThemeService().theme,
          initialRoute: Routes.LOGIN,
          initialBinding: HomeBinding(),
          getPages: AppPages.routes,
          locale: const Locale("fr", "FR"),

        ),
      )
  );
}
