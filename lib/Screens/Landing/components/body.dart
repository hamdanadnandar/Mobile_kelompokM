import 'package:flutter/material.dart';
import 'package:filterin/Screens/Login/login_screen.dart';
import 'package:filterin/Screens/Signup/signup_screen.dart';
import 'package:filterin/Screens/Landing/components/background.dart';
import 'package:filterin/components/rounded_button.dart';
import 'package:filterin/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "asset/logo.png",
              height: size.height * 0.10,
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "Selamat Datang di Filter.in, aplikasi yang",
            ),
            Text(
              "menghubungkan kalian dengan pengelola",
            ),
            Text(
              "sampah agar mengubah sampah menjadi",
            ),
            Text(
              "pupuk organik!",
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.20),

            SizedBox(height: size.height * 0.10),
            RoundedButton(
              text: "Start",
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
            // RoundedButton(
            //   text: "SIGN UP",
            //   color: kPrimaryLightColor,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
