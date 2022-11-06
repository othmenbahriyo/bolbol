import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:weather/app/modules/home/bindings/home_binding.dart';
import 'package:weather/app/modules/home/views/home_view.dart';

class LoginController extends GetxController {
  ///box getStorage
  var box = GetStorage();

  /// text controller
  TextEditingController email = TextEditingController(text: '');
  TextEditingController password = TextEditingController(text:'');

  /// key
  final formKey = GlobalKey<FormState>(debugLabel:"login");

  ///show password
  RxBool obscureText = true.obs;

  ///show hide password
  viewPassWord() => obscureText.value = !obscureText.value;

  /// bool button loding
  RxBool  isLoading = false.obs;

  final count = 0.obs;
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

  void login() {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      box.write('name', email.text.split("@")[0]);
      Get.offAll(()=>HomeView(),binding: HomeBinding());
    }
  }


}
