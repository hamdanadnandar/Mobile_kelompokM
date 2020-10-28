import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: "Nunito"
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: LoginPage(),
          ),
        )

    );

  }
}



class LoginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}
class _loginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                      top: 100
                  ),
                  child: Text( "Filter.in",
                    style: TextStyle(
                        color: Color(0XFF3498DB),
                        fontSize: 35

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 20
                  ),
                  child: Text("bantu kami mengumpulkan sampah \n agar menjadi pupuk organik hanya di filter.in",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 30
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(35),
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0XFF3498DB),
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Center(
                  child: Text(
                    "Yuk Join",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),

    );

  }
}