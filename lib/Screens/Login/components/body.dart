import 'package:filterin/alert.dart';
import 'package:filterin/beranda.dart';
import 'package:filterin/components/alerts.dart';
import 'package:filterin/helper/auth-controller.dart';
import 'package:filterin/navbar.dart';
import 'package:filterin/route.dart';
import 'package:flutter/material.dart';
import 'package:filterin/Screens/Login/components/background.dart';
import 'package:filterin/Screens/Signup/signup_screen.dart';
import 'package:filterin/components/already_have_an_account_acheck.dart';
import 'package:filterin/components/rounded_button.dart';
import 'package:filterin/components/rounded_input_field.dart';
import 'package:filterin/components/rounded_password_field.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

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
              "LOGIN",
              style: TextStyle(fontSize: 34),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              controller : email,
              hintText: "E-mail",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              controller: password,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                SomeAlerts.fOpen(isClosesable: false,msg: "Loading");
                AuthC.login(email.text, password.text).then((value){
                  if(value['status']=='failed'){
                    SomeAlerts.fFails(msg: value['msg']);
                    // FilterinAlert.show(msg: value['msg'], type: 2);
                  }else{
                    Routes.rmPage(context, Beranda());
                  }
                  SomeAlerts.fClose();
                });
              },
            ),
            Text(
              "Belum punya akun?",
              style: TextStyle(fontSize: 13),
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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
