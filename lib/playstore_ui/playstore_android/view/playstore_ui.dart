
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/playstore_ui/playstore_android/provider/playstore_provider.dart';
import 'package:setting_ui/playstore_ui/playstore_android/view/top_charts_ui.dart';

class Playstore_android extends StatefulWidget {
  const Playstore_android({Key? key}) : super(key: key);

  @override
  State<Playstore_android> createState() => _Playstore_androidState();
}

class _Playstore_androidState extends State<Playstore_android> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Text("Reccommended for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                trailing: Icon(Icons.arrow_forward),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(image: AssetImage("${providerF!.imageList[index]}"),fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)
                            ),

                          ),
                          // Image.asset("${providerF!.imageList[index]}"),
                          Text("${providerF!.nameList[index]}",style: TextStyle(fontSize: 10),),
                          Text("${providerF!.statList[index]}",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                    );
                  },
                  itemCount: providerF!.nameList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              ListTile(
                leading: Text("New & updated app",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                trailing: Icon(Icons.arrow_forward),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(image: AssetImage("${providerF!.imageList1[index]}"),fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)
                            ),

                          ),
                          // Image.asset("${providerF!.imageList[index]}"),
                          Text("${providerF!.nameList1[index]}",style: TextStyle(fontSize: 10),),
                          Text("${providerF!.statList[index]}",style: TextStyle(fontSize: 10),),

                        ],
                      ),
                    );
                  },
                  itemCount: providerF!.nameList1.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              ListTile(
                leading: Text("Suhhested for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                trailing: Icon(Icons.arrow_forward),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(image: AssetImage("${providerF!.imageList2[index]}"),fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)
                            ),

                          ),
                          // Image.asset("${providerF!.imageList[index]}"),
                          Text("${providerF!.nameList2[index]}",style: TextStyle(fontSize: 10),),
                          Text("${providerF!.statList[index]}",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                    );
                  },
                  itemCount: providerF!.nameList2.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
//bottom

          // bottomNavigationBar: BottomNavigationBar(items: [
          //   BottomNavigationBarItem(icon: Icon(Icons.add),label: 'hyy'),
          //   BottomNavigationBarItem(icon: Icon(Icons.add),label: 'hyy'),
          //   BottomNavigationBarItem(icon: Icon(Icons.add),label: 'hyy'),
          // ]),
        ),
      ),
    );
  }

}
