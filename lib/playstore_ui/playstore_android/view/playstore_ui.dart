import 'package:flutter/material.dart';

class Playstore_android extends StatefulWidget {
  const Playstore_android({Key? key}) : super(key: key);

  @override
  State<Playstore_android> createState() => _Playstore_androidState();
}

class _Playstore_androidState extends State<Playstore_android> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.white,blurRadius: 15,spreadRadius: 15)
                  ]
                ),
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
              ListTile(leading: Text("Reccommended for you"),trailing: Icon(Icons.arrow_forward),),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                  Text("Nest"),
                  Text("4.21"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
