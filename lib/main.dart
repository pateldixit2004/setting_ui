import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui/playstore_ui/playstore_android/view/playstore_ui.dart';
import 'package:setting_ui/setting_ui/android_ui/view/setting_android.dart';
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
      initialRoute: 'playstore android',
      routes: {
        '/':(context) => Setting_Android(),
        'playstore android':(context) => Playstore_android(),
      },
    )

  );
}