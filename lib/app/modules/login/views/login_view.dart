import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorrence_app/app/data/theme/colors.dart';
import 'package:lorrence_app/app/data/widgets/btn_widget.dart';
import 'package:lorrence_app/app/modules/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 60, left: 16, right: 16),
          width: context.width,
          height: context.height,
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
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Full Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                    style: TextStyle(color: Colors.white54),
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
                  // ConstrainedBox(
                  //   constraints: BoxConstraints.tightFor(width: context.width),
                  //   child: ElevatedButton(
                  //     style: ButtonStyle(
                  //       shape: MaterialStateProperty.all(
                  //         RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //       ),
                  //       backgroundColor:
                  //           MaterialStateProperty.all(Colors.deepPurpleAccent),
                  //       padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                  //     ),
                  //     child: Text(
                  //       "Login",
                  //       style: TextStyle(fontSize: 14, color: Colors.white),
                  //     ),
                  //     onPressed: () {
                  //       controller.checkLogin();
                  //     },
                  //   ),

                  // ),
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
      ),
    );
  }
}
