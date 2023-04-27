import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting_Android extends StatefulWidget {
  const Setting_Android({Key? key}) : super(key: key);

  @override
  State<Setting_Android> createState() => _Setting_AndroidState();
}

class _Setting_AndroidState extends State<Setting_Android> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
          backgroundColor: Colors.red,
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Common",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Language",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200),),
            subtitle: Text("English",style: TextStyle(color: Colors.black45,fontSize: 13,fontWeight: FontWeight.w100),),
          ),
          Divider(height: 5,thickness: 0.5,),
          ListTile(
            leading: Icon(Icons.cloud_outlined),
            title: Text("Environment",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200),),
            subtitle: Text("Production",style: TextStyle(color: Colors.black45,fontSize: 13,fontWeight: FontWeight.w100),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Account",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Phone number",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200),),
          ),
          Divider(height: 5,thickness: 0.5,),
          ListTile(
            leading: Icon(Icons.email_rounded),
            title: Text("Email",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200),),
          ),
          Divider(height: 5,thickness: 0.5,),
          ListTile(
            leading: Icon(Icons.exit_to_app_rounded),
            title: Text("Sign out",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Secutiry",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
          ),
          ListTile(
            leading: Icon(Icons.phonelink_lock_outlined),
            title: Text("Lock app in background",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200),),
            trailing: Switch(activeColor: Colors.red,value: true, onChanged: (value) {

            },),
          ),

          Divider(height: 5,thickness: 0.5,),
          ListTile(
            leading: Icon(Icons.fingerprint),
            title: Text("Use fingerprint",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200),),
            trailing: Switch(activeColor: Colors.red,value: false, onChanged: (value) {

            },),

          ),
          Divider(height: 5,thickness: 0.5,),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Chamge password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200),),
            trailing: Switch(activeColor: Colors.red,value: true, onChanged: (value) {

            },),

          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Misc",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
          ),
        ],
      ),
      ),);
  }
}
