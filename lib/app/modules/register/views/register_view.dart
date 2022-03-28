import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorrence_app/app/modules/register/controllers/register_controller.dart';
import 'package:lorrence_app/app/modules/widgets/btn_widget.dart';

class RegisterView extends GetView<RegisterController> {
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
                          labelText: "Full Name",
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.text,
                        controller: controller.fullNameController,
                        onSaved: (value) {
                          controller.fullname = value!;
                        },
                        validator: (value) {
                          return controller.validateName(value!);
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
                            'Have an account? Sign In',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        onTap: () => Get.back(),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      BtnWidget(
                          labelText: 'Register',
                          onPressed: () {
                            Get.toNamed('/login');
                          },
                          showIcon: true,
                          icon: Icons.person_add),
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
