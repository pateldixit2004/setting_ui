import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class playstoreProvider extends ChangeNotifier
{
  List nameList=[
    "Google Photo","Google Drive","Facebook","Google Cloude"
  ];

  List imageList=[
    'assets/image/img_2.png',
    'assets/image/img_3.png',
    'assets/image/img_4.png',
    'assets/image/img_5.png',

  ];

  List nameList1=[
    "Flipkard","Mesho","Jio cinema","Jio tv"
  ];

  List imageList1=[
    'assets/image/img_10.png',
    'assets/image/img_11.png',
    'assets/image/img_12.png',
    'assets/image/img_13.png',

  ];
  List nameList2=[
    "Tata New","Telegram","Tiwwter","Messeger"
  ];

  List imageList2=[
    'assets/image/img.png',

    'assets/image/img_9.png',
    'assets/image/img_7.png',
    'assets/image/img_8.png',

  ];
  List statList=[
    '4.2 *','4.6 *','4.1 *','4.3 *'
  ];
  List itemnameList=[
    'Top free','Top grossing','Tranding','Top game','Book'
  ];
  List tile =[
    ListTile(
      leading: Text("1"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Tata new",style: TextStyle(fontSize: 15),),
              Text("shopping",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("2"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_2.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Google photo",style: TextStyle(fontSize: 15),),
              Text("photo",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("3"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_3.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Google Drive",style: TextStyle(fontSize: 15),),
              Text("Drive",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("4"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_4.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Facebook",style: TextStyle(fontSize: 15),),
              Text("social media",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("5"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_12.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Jio cinema",style: TextStyle(fontSize: 15),),
              Text("cinema",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("6"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_13.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Jio tv",style: TextStyle(fontSize: 15),),
              Text("electronic",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("7"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_7.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Telegram",style: TextStyle(fontSize: 15),),
              Text("social media",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("8"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_8.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Tiwwter",style: TextStyle(fontSize: 15),),
              Text("social media",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("9"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_9.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Messeger",style: TextStyle(fontSize: 15),),
              Text("social media",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
    ListTile(
      leading: Text("10"),
      title: Row(
        children: [
          Container(
            height: 30,
            width:40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/img_10.png"),fit: BoxFit.fill)
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Flipcard",style: TextStyle(fontSize: 15),),
              Text("shopping",style: TextStyle(fontSize:10),),
              Text("4.2 *",style: TextStyle(fontSize: 10),),
            ],
          )
        ],
      ),
    ),
  ];
  List jiocinemaList=[
    'assets/image/img_15.png',
    'assets/image/img_16.png',
    'assets/image/img_17.png',
    'assets/image/img_18.png',
  ];
}