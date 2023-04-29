import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/playstore_ui/playstore_android/provider/playstore_provider.dart';
import 'package:setting_ui/playstore_ui/playstore_android/view/install_view_ui.dart';
import 'package:setting_ui/setting_ui/ios_ui/view/setting_ui.dart';

void main() {
  runApp(
    // CupertinoApp(
    //   debugShowCheckedModeBanner: false,
    //   routes: {
    //     '/':(p0) => Setting_ios(),
    //   },
    // ),,
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => playstoreProvider(),
        )
      ],
      child:
           CupertinoApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/':(p0) => Setting_ios(),
              },
            )
          // : MaterialApp(
          //     debugShowCheckedModeBanner: false,
          //     initialRoute: 'playstore android',
          //     routes: {
          //       // 'setting ui':(context) => Setting_Android(),
          //       // 'playstore android':(context) => Playstore_android(),
          //       // 'top screen':(context) => Topscreen(),
          //       'instal ': (context) => Install_Screen(),
          //     },
          //   ),
    ),
  );
}
