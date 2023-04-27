import 'package:flutter/cupertino.dart';

class Setting_ios extends StatefulWidget {
  const Setting_ios({Key? key}) : super(key: key);

  @override
  State<Setting_ios> createState() => _Setting_iosState();
}

class _Setting_iosState extends State<Setting_ios> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(navigationBar: CupertinoNavigationBar(
      middle: Text("IOS"),
      leading: Icon(CupertinoIcons.back),
    ),child: Center(
      child: Container(
        height: 100,
        width: 100,
        child: Text("Ios"),
      ),
    ));
  }
}
