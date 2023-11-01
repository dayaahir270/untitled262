
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }

}
class HomePage extends StatelessWidget{
  List<Map<String, dynamic>> listData = [
    {
      "name" : "Krishna",
      "subTitle" : "Hey Whatsup??",
      "color" : Colors.pinkAccent,
      "img" : "assets/icons/ic_boy.png",
      "time" : "12:30 pm",
      "unReadCount" : 2
    },
    {
      "name" : "Krishna",
      "subTitle" : "Hey Whatsup??",
      "color" : Colors.brown,
      "img" : "assets/icons/ic_boy.png",
      "time" : "12:30 pm",
      "unReadCount" : 2
    },
    {
      "name" : "Krishna",
      "subTitle" : "Hey Whatsup??",
      "color" : Colors.blueGrey,
      "img" : "assets/icons/ic_boy.png",
      "time" : "12:30 pm",
      "unReadCount" : 2
    },
    {
      "name" : "Krishna",
      "subTitle" : "Hey Whatsup??",
      "color" : Colors.pinkAccent,
      "img" : "assets/icons/ic_boy.png",
      "time" : "12:30 pm",
      "unReadCount" : 2
    },
    {
      "name" : "Krishna",
      "subTitle" : "Hey Whatsup??",
      "color" : Colors.orangeAccent,
      "img" : "assets/icons/ic_boy.png",
      "time" : "12:30 pm",
      "unReadCount" : 2
    },
    {
      "name" : "Krishna",
      "subTitle" : "Hey Whatsup??",
      "color" : Colors.green,
      "img" : "assets/icons/ic_boy.png",
      "time" : "12:30 pm",
      "unReadCount" : 2
    },
    {
      "name" : "Krishna",
      "subTitle" : "Hey Whatsup??",
      "color" : Colors.blue,
      "img" : "assets/icons/ic_boy.png",
      "time" : "12:30 pm",
      "unReadCount" : 2
    },
    {
      "name" : "Krishna",
      "subTitle" : "Hey Whatsup??",
      "color" : Colors.yellowAccent,
      "img" : "assets/icons/ic_boy.png",
      "time" : "12:30 pm",
      "unReadCount" : 2
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.builder(
          itemCount: listData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 11,
            crossAxisSpacing: 11,
          ),//SliverGrideDelegateWithMaxCrossAxisExtent
          itemBuilder: (_, index){
            return Container(
              color: listData[index]["color"],
            );
          }),
    );
  }
}
/* Column(

  gridDelegate: (

  ),
  children: [
        Expanded(
          child: GridView.extent (maxCrossAxisExtent: 50,

            children: listData.map((e) => Container(

              margin: EdgeInsets.all(11),

              child: Text(e['name']),

              color: e['color'],

            )).toList(),

          ),
        ),
        Expanded(
          child: GridView.count (crossAxisCount: 2,

      children: listData.map((e) => Container(

          margin: EdgeInsets.all(11),

          child: Text(e['name']),

          color: e['color'],

      )).toList(),

    ),
        ),


    ],
    ),
    );
  }
}*/
