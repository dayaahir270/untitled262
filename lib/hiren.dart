import  'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  List<Map<String, dynamic>> listData = [
    {
      "name" : "Krishna",
      "subTitle" : "good morning??",
      "color" : Colors.blue,
      "img" : "assets/icons/ic_boy.png",
      "time" : "11:30 am",
      "unReadCount" : 12
    },
    {
      "name" : "Hiren",
      "subTitle" : "what",
      "color" : Colors.orange,
      "img" : "assets/icons/ic_man.png",
      "time" : "12:50 pm",
      "unReadCount" : 7
    },
    {
      "name" : "Raunak Sir",
      "subTitle" : "Good evening Sir",
      "color" : Colors.brown,
      "img" : "assets/icons/ic_man_2.png",
      "time" : "03:11 pm",
      "unReadCount" : 6
    },
    {
      "name" : "Sima",
      "subTitle" : "I mis yo!!",
      "color" : Colors.yellow,
      "img" : "assets/icons/ic_woman.png",
      "time" : "09:20 am",
      "unReadCount" : 5
    },
    {
      "name" : "Vishnu",
      "subTitle" : "Call me",
      "color" : Colors.red,
      "img" : "assets/icons/ic_boy.png",
      "time" : "10:24 pm",
      "unReadCount" : 10

    },
    {
      "name" : "Naran",
      "subTitle" : "I am busy",
      "color" : Colors.orange,
      "img" : "assets/icons/ic_man.png",
      "time" : "11:43 am",
      "unReadCount" : 0
    },
    {
      "name" : "Anpurna",
      "subTitle" : "Call me back",
      "color" : Colors.pink,
      "img" : "assets/icons/ic_man_2.png",
      "time" : "07:22 pm",
      "unReadCount" : 0
    },
    {
      "name" : "Sruti",
      "subTitle" : "Where are you??",
      "color" : Colors.grey,
      "img" : "assets/icons/ic_woman.png",
      "time" : "05:34 pm",
      "unReadCount" : 8
    },
  ];

  //List<Widget> listWidget = [];


  @override
  Widget build(BuildContext context) {

    /*for(String name in listData){
      listWidget.add(Container(
        width: double.infinity,
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text(name, style: TextStyle(fontSize: 21, color: Colors.white),),
        ),
        margin: EdgeInsets.all(11),
      ));
    }*/

    return Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: ListView.builder(
            itemCount: listData.length,
            itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: listData[index]["color"],
                  maxRadius: 30,
                  backgroundImage: AssetImage(listData[index]["img"]),
                ),
                title: Text("${listData[index]["name"]}"),
                subtitle: Text("${listData[index]["subTitle"]}"),
                trailing: Column(
                  children: [
                    Text("${listData[index]["time"]}", style: TextStyle(color: Colors.green),),
                    listData[index]["unReadCount"]==0 ? Container(width: 0,) : Container(
                      width: 25,
                      height: 25,
                      child: Center(child: Text("${listData[index]["unReadCount"]}", style: TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                ),
              );
            })
    );
  }
}


//Container(
//               padding: EdgeInsets.symmetric(horizontal: 21),
//               width: double.infinity,
//               height: 100,
//               color: listData[index]["color"],
//               child: Row(
//                 children: [
//                   Image.asset(listData[index]["img"], width: 40, height: 40,),
//                   SizedBox(
//                     width: 11,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(listData[index]["name"], style: TextStyle(fontSize: 21, color: Colors.white),),
//                       Text(listData[index]["subTitle"], style: TextStyle(fontSize: 14, color: Colors.white),),
//                     ],
//                   )
//                 ],
//               ),
//               margin: EdgeInsets.all(11),
//             );


//Container(
//                 width: 50,
//                 decoration: BoxDecoration(
//                   color: listData[index]["color"],
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage(listData[index]["img"])
//                   )
//                 ),
//               ),