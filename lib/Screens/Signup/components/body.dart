import 'package:filterin/alert.dart';
import 'package:filterin/beranda.dart';
import 'package:filterin/components/alerts.dart';
import 'package:filterin/helper/auth-controller.dart';
import 'package:filterin/navbar.dart';
import 'package:filterin/route.dart';
import 'package:flutter/material.dart';
import 'package:filterin/Screens/Login/login_screen.dart';
import 'package:filterin/Screens/Signup/components/background.dart';
import 'package:filterin/components/already_have_an_account_acheck.dart';
import 'package:filterin/components/rounded_button.dart';
import 'package:filterin/components/rounded_input_field.dart';
import 'package:filterin/components/rounded_password_field.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  void register() async {
    AuthC.register(email.text, phone.text, password.text).then((res){
      print(res);
      if(res['status']=='ok' && res['status']!=null){
        SomeAlerts.fSuccess(msg: "Berhasil membuat akun");
        Routes.rmPage(context, Beranda());
      }else{
        if(res['email']!=null){
          SomeAlerts.fFails(msg: res['email'][0]);
        }else if(res['phone']!=null){
          SomeAlerts.fFails(msg: res['phone'][0]);
        }else if(res['password']!=null){
          SomeAlerts.fFails(msg: res['password'][0]);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "asset/logo.png",
              height: size.height * 0.05,
            ),
            SizedBox(height: size.height * 0.10),
            Text(
              "REGISTER",
              style: TextStyle(fontSize: 34),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              hintText: "Your Email",
              controller: email,
            ),
            RoundedInputField(
              hintText: "Phone",
              controller: phone,
            ),
            RoundedPasswordField(
              controller: password,
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                register();
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
