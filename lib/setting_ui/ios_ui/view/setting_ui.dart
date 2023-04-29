import 'package:flutter/cupertino.dart';

class Setting_ios extends StatefulWidget {
  const Setting_ios({Key? key}) : super(key: key);

  @override
  State<Setting_ios> createState() => _Setting_iosState();
}

class _Setting_iosState extends State<Setting_ios> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "Setting UI",
            style: TextStyle(color: CupertinoColors.white),
          ),
          backgroundColor: CupertinoColors.destructiveRed,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Common"),
            Container(
              color: CupertinoColors.white,
              child: Column(
                children: [
                  CupertinoListTile(
                    title: Text("Language"),
                    leading: Icon(CupertinoIcons.globe,color: CupertinoColors.systemGrey),
                    trailing: Row(
                      children: [
                        Text("English",style: TextStyle(color: CupertinoColors.systemGrey),),
                        Icon(CupertinoIcons.forward,color: CupertinoColors.systemGrey,)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Text("Environment"),
                    leading: Icon(CupertinoIcons.cloud,color: CupertinoColors.systemGrey),
                    trailing: Row(
                      children: [
                        Text("production",style: TextStyle(color: CupertinoColors.systemGrey),),
                        Icon(CupertinoIcons.forward,color: CupertinoColors.systemGrey,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("Account"),
            Container(
              color: CupertinoColors.white,
              child: Column(
                children: [
                  CupertinoListTile(
                    title: Text("Phone number"),
                    leading: Icon(CupertinoIcons.phone_fill,color: CupertinoColors.systemGrey),
                    trailing: Icon(CupertinoIcons.forward,color: CupertinoColors.systemGrey,),
                  ),
                  CupertinoListTile(
                    title: Text("Email"),
                    leading: Icon(CupertinoIcons.mail,color: CupertinoColors.systemGrey),
                    trailing: Row(
                      children: [
                        Icon(CupertinoIcons.forward,color: CupertinoColors.systemGrey,)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Text("Sign out "),
                    leading: Icon(CupertinoIcons.square_arrow_right,color: CupertinoColors.systemGrey),
                    trailing: Row(
                      children: [
                        Icon(CupertinoIcons.forward,color: CupertinoColors.systemGrey,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("Secutiry"),
            Container(
              color: CupertinoColors.white,
              child: Column(
                children: [
                  CupertinoListTile(
                    title: Text("lock app in background"),
                    leading: Icon(CupertinoIcons.device_phone_portrait,color: CupertinoColors.systemGrey),
                    trailing: CupertinoSwitch(activeColor: CupertinoColors.destructiveRed,value: true, onChanged: (value) {

                    },)
                  ),
                  CupertinoListTile(
                      title: Text("Use fingerprint"),
                      leading: Icon(CupertinoIcons.f_cursive_circle_fill,color: CupertinoColors.systemGrey),
                      trailing: CupertinoSwitch(activeColor: CupertinoColors.white,value: false, onChanged: (value) {

                    },)
                  ),
                  CupertinoListTile(
                    title: Text("Change password"),
                    leading: Icon(CupertinoIcons.lock_fill,color: CupertinoColors.systemGrey),
                    trailing: CupertinoSwitch(activeColor: CupertinoColors.destructiveRed,value: true, onChanged: (value) {

                    },)
                  ),

                ],
              ),
            ) ,
            Text("minc"),
            Container(
              color: CupertinoColors.white,
              child: Column(
                children: [
                  CupertinoListTile(
                    title: Text("Terms of Service"),
                    leading: Icon(CupertinoIcons.table,color: CupertinoColors.systemGrey),
                    trailing:                         Icon(CupertinoIcons.forward,color: CupertinoColors.systemGrey,)

                  ),
                  CupertinoListTile(
                      title: Text("Open source lincenses"),
                      leading: Icon(CupertinoIcons.sort_down_circle,color: CupertinoColors.systemGrey),
                      trailing:                         Icon(CupertinoIcons.forward,color: CupertinoColors.systemGrey,)

                  ),


                ],
              ),
            )
          ],
        ));
  }
}
