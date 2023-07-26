import 'package:flutter/material.dart';
import 'package:tpb_aplikasi/Components/Register/Registrasi.dart';
import 'package:tpb_aplikasi/Components/custom_surfix_icon.dart';
import 'package:tpb_aplikasi/utils/constants.dart';
import 'package:tpb_aplikasi/size_config.dart';
import 'package:tpb_aplikasi/Components/default_button_custome_color.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInform createState() => _SignInform();
}

class _SignInform extends State<SignInform> {
  get _formkey => GlobalKey<FormState>();

  FocusNode focusNode = new FocusNode();
  String? username;
  String? Password;
  bool? remeber = false;
  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenWidth(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenWidth(30)),
          Row(
            children: [
              Checkbox(
                  value: remeber,
                  onChanged: (value) {
                    setState(() {
                      remeber = value;
                    });
                  }),
              Text('tetap masuk'),
              Spacer(),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    'lupa password',
                    style: TextStyle(decoration: TextDecoration.underline),
                  )),
            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: 'masuk',
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, RegisterScreen.routeName);
              },
              child: Text(
                'Belum punya akun ? Daftar disni',
                style: TextStyle(decoration: TextDecoration.underline),
              )),
        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'UserName',
          hintText: 'masukan username anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Paswwrod',
          hintText: 'masukan Password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }
}
