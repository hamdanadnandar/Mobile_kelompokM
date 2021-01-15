import 'package:flutter/material.dart';

class FilterAppBar extends AppBar {
  FilterAppBar()
    : super (
      elevation: 0.25,
      backgroundColor: Colors.white,
      flexibleSpace: _buildFilterAppBar());

  static Widget _buildFilterAppBar() {
    return new Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 0.0, top: 0.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image.asset(
            "asset/logo.png",
            height: 100.0,
            width: 130.0,
          ),
        ],
      )
    );
  }
}