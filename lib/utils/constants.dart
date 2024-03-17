import 'package:flutter/material.dart';

class LoginConstants {
  static const String logo = "assets/logo.png";

  static const String sloganText = "Please Login to match your best partner.";
  static const String welcome = "Welcome";
}

class LoginTextStyle {
  static const sloganStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const welcomeStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.amberAccent,
  );
}

class RegisterConstants {
  static const String profie = "assets/profile_avatar.jpg";
}

class RegisterTextStyle {
  static const myStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const fieldtyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
}
