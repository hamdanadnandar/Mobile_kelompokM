import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SomeAlerts {
  static fOpen({bool isClosesable, String msg}){
    return EasyLoading.show(
      dismissOnTap: isClosesable,
      indicator: CircularProgressIndicator(
        backgroundColor: Colors.black,
      ),
      status: msg,
      maskType: EasyLoadingMaskType.black,
    );
  }
  static fSuccess({String msg}){
    return EasyLoading.showSuccess(
      msg, 
      dismissOnTap: true, 
      duration: Duration(seconds: 2),
      maskType: EasyLoadingMaskType.none
    );
  }
  static fFails({String msg}){
    return EasyLoading.showError(
      msg,
      dismissOnTap: true, 
      duration: Duration(seconds: 2),
      maskType: EasyLoadingMaskType.none
    );
  }
  static fClose(){
    return EasyLoading.dismiss();
  }
}