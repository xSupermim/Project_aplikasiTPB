import 'package:flutter/material.dart';
import 'package:tpb_aplikasi/Components/Register/Registrasi.dart';
import 'package:tpb_aplikasi/Screens/Login/LoginScreens.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen()
};
