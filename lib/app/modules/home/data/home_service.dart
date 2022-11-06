import 'dart:async';
import 'dart:developer' as dev;

import '../../../data/remote/api_request.dart';

class HomeService {
  static HomeService? _instance;

  static HomeService getInstance() {
    _instance ??= HomeService();
    return _instance!;
  }

  Future getWeathr({required Function onSuccess, required Function onError}) async {
    try {
      var url = "http://api.openweathermap.org/data/2.5/forecast?lat=48.856614&lon=2.3522219&appid=7f2e9503830d9b2ffaf4c06f223f10f9";
      var response = await ApiRequest(url: url).get();
      if (response != null) {
        onSuccess(response);
      } else {
        onError(response);
      }
    } on Exception catch (e) {
      dev.log("error", error: e);
      onError(e);
    }
  }
}
