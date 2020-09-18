import 'package:flutter/material.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:fluttertoast/fluttertoast.dart';

class External{
  static shareText(String text) async {
    FlutterShareMe().shareToSystem(msg: text).then(checkShareResult);
  }

  static checkShareResult(dynamic value) {
    if (value == "false") {
      Fluttertoast.showToast(
          msg: "Ups...",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.black87,
          textColor: Colors.white,
          timeInSecForIosWeb: 2
      );
    }
  }

}