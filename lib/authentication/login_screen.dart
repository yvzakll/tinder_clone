import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/utils/constants.dart';
import 'package:tinder_clone/widgets/custom_text_field_widget.dart';

import '../routes/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailEditingController = TextEditingController();
TextEditingController passwordEditingController = TextEditingController();
bool showProgressBar = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var width2 = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset(LoginConstants.logo,
                  width: MediaQuery.of(context).size.width * 0.5),
              const Text(
                LoginConstants.sloganText,
                style: LoginTextStyle.sloganStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                LoginConstants.welcome,
                style: LoginTextStyle.welcomeStyle,
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const SizedBox(
                height: 20,
              ),
              //EMAIL
              SizedBox(
                width: width2,
                child: CustomTextField(
                  editingController: emailEditingController,
                  labelText: "Email",
                  iconData: Icons.email,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //PASSWORD
              SizedBox(
                width: width2,
                child: CustomTextField(
                  editingController: passwordEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outline,
                  isObscure: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //LOGIN BUTTON
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.green,
                ),
                width: width2,
                height: 50,
                child: InkWell(
                  onTap: () {},
                  child: const Center(child: Text("LOGIN")),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //DON'T HAVE AN ACCOUNT CREATE HERE
              createAccount(),
              const SizedBox(
                height: 25,
              ),
              showProgressBar == true
                  ? const CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.amberAccent),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Row createAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: LoginTextStyle.sloganStyle,
        ),
        InkWell(
          child: const Text(
            "Create Here!",
            style: LoginTextStyle.welcomeStyle,
          ),
          onTap: () {
            Get.toNamed(Routes.REGISTER_PAGE);
          },
        )
      ],
    );
  }
}
