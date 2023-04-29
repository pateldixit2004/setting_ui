import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/playstore_ui/playstore_android/provider/playstore_provider.dart';

class Topscreen extends StatefulWidget {
  const Topscreen({Key? key}) : super(key: key);

  @override
  State<Topscreen> createState() => _TopscreenState();
}

class _TopscreenState extends State<Topscreen> {

  playstoreProvider? providerF;
  playstoreProvider? providerT;
  @override
  Widget build(BuildContext context) {

    providerF = Provider.of<playstoreProvider>(context, listen: false);
    providerT = Provider.of<playstoreProvider>(context, listen: true);
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.white, blurRadius: 15, spreadRadius: 15)
                ]),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  trailing: Icon(Icons.mic),
                ),
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  text: "For you",
                ),
                Tab(
                  text: "Top secert",
                ),
                Tab(
                  text: "Categories",
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              ListTile(
                leading: Text(
                  "Show installed appps",
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
                trailing: Switch(
                  onChanged: (value) {

                  },value: false,activeColor: Colors.white24,
                ),
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red
                    ),
                    child: Center(child: Text("${providerF!.itemnameList[index]}"),),
                  );
                },itemCount: providerF!.itemnameList.length,scrollDirection: Axis.horizontal,),
              ),

              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    child: providerF!.tile[index],
                  );
                },itemCount: providerF!.tile.length,scrollDirection: Axis.vertical,),
              ),

            ],
          ),
        ),
      ),
    );
  }

}
