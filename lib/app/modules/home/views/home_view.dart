import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:weather/app/modules/login/bindings/login_binding.dart';
import 'package:weather/app/modules/login/views/login_view.dart';
import 'package:weather/app/utils/helpers/date_formatter.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller.getWeather();
    return Scaffold(
      appBar: AppBar(
        title: Text("BIENVENUE ${GetStorage().read("name").toUpperCase()}" ,style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 2,
        actions: [
          IconButton(onPressed: (){
            Get.offAll(()=>LoginView(),binding: LoginBinding());
            GetStorage().remove("name");

          }, icon:const Icon(Icons.logout))
        ],
      ),
      body: controller.obx((state) => ListView.builder(itemBuilder: (context,index){
        return Container(
          margin:const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: .2
            )
          ),
          child: ListTile(
            leading: Image.network('http://openweathermap.org/img/w/${controller.listOfWeather[index].weather[0].icon}.png',),
            title: Text(formatDate(controller.listOfWeather[index].dtTxt)),

            subtitle: Text("${(controller.listOfWeather[index].weather[0].main)}"),

          ),
        );
      },
        itemCount: 5,

      ))
    );
  }
}
