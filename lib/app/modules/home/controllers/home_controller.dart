import 'package:get/get.dart';
import 'package:weather/app/data/model/weather.dart';
import 'package:weather/app/modules/home/data/home_service.dart';

class HomeController extends GetxController with StateMixin {
  /// list of orders
  RxList listOfWeather = <Weathers>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  /// list orders by id provider
  getWeather() async {
    listOfWeather.clear();
    change(listOfWeather, status: RxStatus.loading());
    await HomeService.getInstance().getWeathr(onSuccess: (data) async {
      print("rrrrrrrrrrrrrrrrrrrrr$data");
      if (data['list'].isEmpty) {
        change(listOfWeather, status: RxStatus.empty());
      } else {

        for(int i = 0; i< data['list'].length; i=i+8){
          listOfWeather.add(Weathers.fromJson(data['list'][i]));
        }

         /* data['list'].forEach((i) {
            listOfWeather.add(Weathers.fromJson(i));
        });*/
        print(listOfWeather[0].weather[0].description);
        change(listOfWeather, status: RxStatus.success());
      }
    }, onError: (e) {
      change(listOfWeather, status: RxStatus.error());
    });
  }
}
