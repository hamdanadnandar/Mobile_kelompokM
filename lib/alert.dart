import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FilterinAlert {
  static Future<void> show({
    @required String msg,
    int type,
  }) async {
    Color backgroundColor;

    switch (type) {
      case 1:
        backgroundColor = Colors.green;
        break;
      case 2:
        backgroundColor = Colors.red;
        break;
      default:
        backgroundColor = Colors.black;
        break;
    }

    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: backgroundColor,
        textColor: Colors.white);
  }
}