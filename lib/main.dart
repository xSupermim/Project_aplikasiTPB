import 'package:flutter/material.dart';
import 'package:tpb_aplikasi/Screens/Login/LoginScreens.dart';
import 'package:tpb_aplikasi/routes.dart';
import 'package:tpb_aplikasi/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "Toko Gitar Laris",
    theme: theme(),
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}
