import 'package:filterin/navbar.dart';
import 'package:flutter/material.dart';
import 'package:filterin/Screens/Login/login_screen.dart';
import 'package:filterin/Screens/Signup/components/background.dart';
import 'package:filterin/components/already_have_an_account_acheck.dart';
import 'package:filterin/components/rounded_button.dart';
import 'package:filterin/components/rounded_input_field.dart';
import 'package:filterin/components/rounded_password_field.dart';

class Body extends StatelessWidget {
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
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Phone",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavBawah()),
                );
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
