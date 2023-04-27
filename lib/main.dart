import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui/android_ui/view/setting_android.dart';
import 'package:setting_ui/ios_ui/view/setting_ui.dart';
void main()
{
  runApp(
    // CupertinoApp(
    //   debugShowCheckedModeBanner: false,
    //   routes: {
    //     '/':(p0) => Setting_ios(),
    //   },
    // ),,
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Setting_Android(),
      },
    )

  );
}