import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFD6CD0E);
const kSecundaryColor = Color(0xFFF3F6F8);
const kBackgroundColor = Color(0xFFCDC6A5);
const kInputBackground = Color(0xFFF0DCCA);
const kTextBase = Color(0xFF2F2F2F);
const kTitlePrimary = Colors.black;
const kTextPrimary = Color(0xFF5F3B1C);

const double kDefaultPadding = 20.0;
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: kTextBase,
  height: 1.2,
);

const defaultDuration = Duration(milliseconds: 250);
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Por favor, informe seu Email";
const String kInvalidEmailError = "Por favor, informe um email valido";
const String kPassNullError = "Por favor, informe sua senha";
const String kShortPassError = "Senha muito curta!";
const String kMatchPassError = "Senha incorreta!";
const String kNamelNullError = "Por favor, informe seu nome!";
const String kPhoneNumberNullError = "Por favor, informe seu número";
const String kAddressNullError = "Por favor, informe seu endereço";
