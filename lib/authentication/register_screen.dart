// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/controller/authentication_controller.dart';
import 'package:tinder_clone/routes/routes.dart';
import 'package:tinder_clone/utils/constants.dart';

import '../widgets/custom_text_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

TextEditingController emailEditingController = TextEditingController();
TextEditingController passwordEditingController = TextEditingController();
TextEditingController nameEditingController = TextEditingController();
TextEditingController ageEditingController = TextEditingController();
TextEditingController phoneNoEditingController = TextEditingController();
TextEditingController cityEditingController = TextEditingController();
TextEditingController countryEditingController = TextEditingController();
TextEditingController profileHeadingEditingController = TextEditingController();
TextEditingController lookingForInaPartnerEditingController =
    TextEditingController();

//appearance
TextEditingController heightEditingController = TextEditingController();
TextEditingController weightEditingController = TextEditingController();
TextEditingController bodyTypeEditingController = TextEditingController();

//life style
TextEditingController drinkEditingController = TextEditingController();
TextEditingController smokeEditingController = TextEditingController();
TextEditingController martialStatusEditingController = TextEditingController();
TextEditingController haveChildrenEditingController = TextEditingController();
TextEditingController noOfChildrenEditingController = TextEditingController();
TextEditingController professionEditingController = TextEditingController();
TextEditingController employmentStatusEditingController =
    TextEditingController();
TextEditingController incomeTextEditingController = TextEditingController();
TextEditingController livingSituationEditingController =
    TextEditingController();
TextEditingController willingToRelocateEditingController =
    TextEditingController();
TextEditingController releationShipYouAreLookingForEditingController =
    TextEditingController();

//cultural info
TextEditingController nationalityEditingController = TextEditingController();
TextEditingController educationEditingController = TextEditingController();
TextEditingController languageEditingController = TextEditingController();
TextEditingController religionEditingController = TextEditingController();
TextEditingController ethnicityEditingController = TextEditingController();
var authenticationController =
    AuthenticationController.authenticationController;

class _RegisterScreenState extends State<RegisterScreen> {
  bool showProgressBar = false;
//personal info

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              RegisterDesignColumn(context),
              const Text(
                "Personel Info",
                style: RegisterTextStyle.fieldtyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async {
                      await authenticationController.pickedImageFromGallery();
                      setState(() {
                        authenticationController.imageFile;
                      });
                    },
                    icon: const Icon(Icons.image),
                  ),
                  IconButton(
                    onPressed: () async {
                      await authenticationController.pickedImageFromCamera();

                      setState(() {
                        authenticationController.imageFile;
                      });
                    },
                    icon: const Icon(Icons.camera_alt_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              PersonalInfoColumn(context),
              ApperanceColumn(context),
              LifeStyleColumn(context),
              CulturalColumn(context),
              const SizedBox(
                height: 15,
              ),
              logInAccount(),
              const SizedBox(
                height: 15,
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

  Row logInAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
          style: LoginTextStyle.sloganStyle,
        ),
        InkWell(
          child: const Text(
            "Log in Here!",
            style: LoginTextStyle.welcomeStyle,
          ),
          onTap: () {
            Get.toNamed(Routes.LOGIN_PAGE);
          },
        )
      ],
    );
  }
}

Widget LifeStyleColumn(BuildContext context) {
  var width3 = MediaQuery.of(context).size.width * 0.9;
  return Column(
    children: [
      const Text(
        "Life Style",
        style: RegisterTextStyle.fieldtyle,
      ),
      const SizedBox(
        height: 20,
      ),
      //AGE
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: drinkEditingController,
          labelText: "Drink",
          iconData: Icons.no_drinks,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //phoneNo
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: smokeEditingController,
          labelText: "Smoke",
          iconData: Icons.smoke_free,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //city
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: martialStatusEditingController,
          labelText: "Martial Status",
          iconData: Icons.sports_martial_arts,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //country
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: haveChildrenEditingController,
          labelText: "Have a Children",
          iconData: Icons.child_care,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //profileHeadi

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: noOfChildrenEditingController,
          labelText: "No of Child",
          iconData: Icons.child_friendly,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //lookingforpartner

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: professionEditingController,
          labelText: "Profession",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //lookingforpartner

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: employmentStatusEditingController,
          labelText: "emmployment",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //lookingforpartner

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: incomeTextEditingController,
          labelText: "Income",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //lookingforpartner

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: livingSituationEditingController,
          labelText: "Living",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //lookingforpartner

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: willingToRelocateEditingController,
          labelText: "Willing",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //lookingforpartner

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: releationShipYouAreLookingForEditingController,
          labelText: "ReleationShip",
          iconData: Icons.real_estate_agent,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //lookingforpartner
    ],
  );
}

Widget ApperanceColumn(BuildContext context) {
  var width3 = MediaQuery.of(context).size.width * 0.9;
  return Column(
    children: [
      const Text(
        "Appearance",
        style: RegisterTextStyle.fieldtyle,
      ),
      const SizedBox(
        height: 10,
      ),
      //NAME
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: heightEditingController,
          labelText: "Height",
          iconData: Icons.height,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //EMAIL
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: weightEditingController,
          labelText: "Weight",
          iconData: Icons.monitor_weight,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //PASSWORD
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: bodyTypeEditingController,
          labelText: "Body Type",
          iconData: Icons.boy_rounded,
          isObscure: true,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}

Widget PersonalInfoColumn(BuildContext context) {
  var width3 = MediaQuery.of(context).size.width * 0.9;

  return Column(
    children: [
      //NAME
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: nameEditingController,
          labelText: "Name",
          iconData: Icons.person,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //EMAIL
      SizedBox(
        width: width3,
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
        width: width3,
        child: CustomTextField(
          editingController: passwordEditingController,
          labelText: "Password",
          iconData: Icons.lock_outline,
          isObscure: true,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //AGE
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: ageEditingController,
          labelText: "Age",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //phoneNo
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: phoneNoEditingController,
          labelText: "phoneNo",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //city
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: cityEditingController,
          labelText: "City",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //country
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: countryEditingController,
          labelText: "Country",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //profileHeadi

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: profileHeadingEditingController,
          labelText: "profileHeadi",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //lookingforpartner

      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: lookingForInaPartnerEditingController,
          labelText: "lookingforpartner",
          iconData: Icons.lock_outline,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}

Widget RegisterDesignColumn(BuildContext context) {
  return Column(
    children: [
      const SizedBox(
        height: 100,
      ),
      const Text(
        "Create Account",
        style: RegisterTextStyle.fieldtyle,
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "Get Started Now",
        style: RegisterTextStyle.fieldtyle,
      ),
      const SizedBox(
        height: 16,
      ),
      authenticationController.imageFile == null
          ? const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(RegisterConstants.profie),
              backgroundColor: Colors.black,
            )
          : Container(
              width: 180,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                image: DecorationImage(
                  image: FileImage(
                    File(authenticationController.imageFile!.path),
                  ),
                ),
              ),
            ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}

Widget CulturalColumn(BuildContext context) {
  var width3 = MediaQuery.of(context).size.width * 0.9;
  return Column(
    children: [
      const Text(
        "Cultural Info",
        style: RegisterTextStyle.fieldtyle,
      ),
      const SizedBox(
        height: 10,
      ),
      //NAME
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: nationalityEditingController,
          labelText: "Nationality",
          iconData: Icons.navigation,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //EMAIL
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: educationEditingController,
          labelText: "Educatiom",
          iconData: Icons.cast_for_education,
          isObscure: false,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      //PASSWORD
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: languageEditingController,
          labelText: "Language",
          iconData: Icons.language,
          isObscure: true,
        ),
      ),
      const SizedBox(
        height: 20,
      ),

      //PASSWORD
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: religionEditingController,
          labelText: "Religion",
          iconData: Icons.receipt_long,
          isObscure: true,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: width3,
        child: CustomTextField(
          editingController: ethnicityEditingController,
          labelText: "Ethinicity",
          iconData: Icons.remove_red_eye,
          isObscure: true,
        ),
      ),
    ],
  );
}
