import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginController());
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: Get.width,
              child: Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/logo.png",
                          height: 150,
                          width: 200,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: Get.height * .035,
                    ),
                    AutoSizeText(
                      'Se Connecter',
                      maxLines: 1,
                      style:
                          Get.theme.textTheme.headline1!.copyWith(fontSize: 36),
                    ),
                    SizedBox(
                      height: Get.height * .04,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email',
                          style: Get.theme.textTheme.headline2,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 75,
                      width: Get.width * 0.9,
                      child: TextFormField(
                          onChanged: (a) {},
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: 'Veuillez saisir votre e-mail'),
                            EmailValidator(
                                errorText: 'Veuillez entrer un email valide')
                          ]),
                          controller: controller.email,
                          style: Get.textTheme.bodyText1,
                          keyboardType: TextInputType.text,
                          showCursor: true,
                          decoration: const InputDecoration(
                            hintText: 'Email ...',
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Mot de passe',
                          style: Get.theme.textTheme.headline2,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 75,
                      width: Get.width * 0.9,
                      child: Obx(
                        () => SizedBox(
                          height: 70,
                          width: Get.width * 0.2,
                          child: TextFormField(
                            onChanged: (a) {},
                            validator: RequiredValidator(
                                errorText:
                                    'Veuiller saisir votre mot de passe'),
                            controller: controller.password,
                            style: Get.textTheme.bodyText1,
                            keyboardType: TextInputType.text,
                            showCursor: true,
                            obscureText: controller.obscureText.value,
                            decoration: InputDecoration(
                                suffix: InkWell(
                                  onTap: controller.viewPassWord,
                                  child: Icon(
                                    controller.obscureText.value
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color(0xFFB4B4B4),
                                  ),
                                ),
                                hintText: 'Mot de passe ...'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                            child: Text(
                          'Vous avez oublié votre mot de passe?',
                          style: Get.theme.textTheme.headline3,
                        ))),
                    SizedBox(
                      height: Get.height * .05,
                    ),
                    MaterialButton(
                      onPressed: () {
                         controller.login();
                      },
                      color: Colors.blue,
                      height: 60,
                      minWidth: Get.width * .9,
                      elevation: 0,
                      child: const Text(
                        'Se Connecter',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Pas encore inscrit ?',
                            style: Get.theme.textTheme.headline3,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Créer un compte",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 15.0),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
