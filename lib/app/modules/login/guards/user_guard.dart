import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:weather/app/routes/app_pages.dart';



/// used to create an instance of the controller

class LoginMiddleware extends GetMiddleware {

  /// use GetStorage through an instance
  var box = GetStorage();


  /// redirect to Home page if 'isAuthenticated' = true (in case of pressing the bottom of remember me
  @override
  RouteSettings? redirect(String? route) {
    if (box.read('name') != '') {
      return const RouteSettings(name: Routes.HOME);
    }
  }
}