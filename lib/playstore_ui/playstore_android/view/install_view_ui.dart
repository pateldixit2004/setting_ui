import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/playstore_provider.dart';

class Install_Screen extends StatefulWidget {
  const Install_Screen({Key? key}) : super(key: key);

  @override
  State<Install_Screen> createState() => _Install_ScreenState();
}

class _Install_ScreenState extends State<Install_Screen> {
  playstoreProvider? providerF;
  playstoreProvider? providerT;
  @override
  Widget build(BuildContext context) {

    providerF = Provider.of<playstoreProvider>(context, listen: false);
    providerT = Provider.of<playstoreProvider>(context, listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        actions: [
          Icon(Icons.search_rounded,color: Colors.black,),
          Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Image.asset("assets/image/img_14.png"),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("JioCinema: TATA IPL & more",style: TextStyle(fontSize: 20,color: Colors.black),),
                  Text("Tata IPL on all networks. Tata IPL हर नेटवर्क पर",style: TextStyle(fontSize: 10,color: Colors.green),),
                  Text("Contains ads",style: TextStyle(fontSize: 8,color: Colors.grey),),
                ],
              ),
            ),
            SizedBox(height: 15),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Container(
            //       height: 18,
            //       width: 100,
            //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            //         color: Colors.white,
            //         boxShadow: [
            //           BoxShadow(spreadRadius: 1,color: Colors.grey)
            //         ]
            //       ),
            //       child: Center(child: Text("Uninstall",style: TextStyle(color: Colors.green),)),
            //     ),
            //     Container(
            //       height: 18,
            //       width: 100,
            //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            //           color: Colors.green,
            //           boxShadow: [
            //             BoxShadow(spreadRadius: 1,color: Colors.grey)
            //           ]
            //       ),
            //
            //       child: Center(child: Text("Install",style: TextStyle(color: Colors.black),)),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("4.6 *",style: TextStyle(color: Colors.black),),
                      Text("100k reviews",style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("10M+",style: TextStyle(color: Colors.black)),
                      Text("Downloads",style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("E",style: TextStyle(color: Colors.black)),
                      Text("Everyone",style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 25,
                width: double.infinity,
                color: Colors.green,
                child: Center(child: Text("Install",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            ),
            // Expanded(
            //   child: ListView.builder(itemBuilder: (context, index) {
            //     return Image.asset("${providerF!.jiocinemaList[index]}");
            //   },itemCount: providerF!.jiocinemaList.length,scrollDirection: Axis.horizontal,),
            // )
           
            // Expanded(
            //   child: ListView(
            //     children: [
            //       img("assets/image/img_15.png"),
            //       img("assets/image/img_16.png"),
            //       img("assets/image/img_17.png"),
            //       img("assets/image/img_18.png"),
            //     ],
            //     scrollDirection: Axis.horizontal,
            //   ),
            // ),
            Container(
              height: 60,
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(
                  height: 40,
                  child: Image.asset("${providerF!.jiocinemaList[index]}",height: 30,),
                );
              },scrollDirection: Axis.horizontal,itemCount: providerF!.jiocinemaList.length,),
            ),
            ListTile(
              leading: Text("About this app",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              trailing: Icon(Icons.arrow_forward_outlined),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("JioCinema – Watch Tata IPL for free on all networks.",style: TextStyle(color: Colors.grey),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(color: Colors.white24,spreadRadius: 0.4)
                          ]
                        ),
                        child: Text("Action",style: TextStyle(color: Colors.black)),
                      ),
                      SizedBox(width: 30),
                      Container(
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(color: Colors.white24,spreadRadius: 0.4)
                          ]
                        ),
                        child: Text("Editors choice",style: TextStyle(color: Colors.black)),
                      ),
                      ListTile(
                        leading: Text("Rating & reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        trailing: Icon(Icons.arrow_forward_outlined),


                      )
                    ],
                  )
                ],
              ),
            )
            
          ],
          
        ),
      ),
    ),);
  }
  Widget img(String? img)
  {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('$img'),fit: BoxFit.fill)
      ),
    );
  }

}
