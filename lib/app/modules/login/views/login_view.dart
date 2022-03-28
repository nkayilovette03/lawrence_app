import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorrence_app/app/data/screen_size_config.dart';
import 'package:lorrence_app/app/modules/login/controllers/login_controller.dart';
import 'package:lorrence_app/app/modules/widgets/btn_widget.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
              child: SingleChildScrollView(
                child: Form(
                  key: controller.loginFormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/app_logo_splash.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Welcome to Finance App",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.emailController,
                        onSaved: (value) {
                          controller.email = value!;
                        },
                        validator: (value) {
                          return controller.validateEmail(value!);
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        controller: controller.passwordController,
                        onSaved: (value) {
                          controller.password = value!;
                        },
                        validator: (value) {
                          return controller.validatePassword(value!);
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Text(
                            'Don\'t have an account? Create One Now',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        onTap: () => Get.toNamed('/register'),
                      ),
                      Text(
                        'Forgotten Password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      BtnWidget(
                        labelText: 'Login',
                        onPressed: () => Get.toNamed('/bottom-nav-bar'),
                        showIcon: true,
                        icon: Icons.login,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
