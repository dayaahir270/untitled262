
import 'package:flutter/material.dart';




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
      home:  HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first UI'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(19),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffe6f1fa),
                          border: Border.all(
                              width: 1
                          )
                      ),
                      child: Center(
                        child: Text('strawberry pavlova', style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),),),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 11),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xffe6f1fa),
                            border: Border.all(
                                width: 1
                            )
                        ),
                        child: Center(child: Text(
                            'pavalova is a meringue-based\n dessert named after the Russian\n ballerine Anna pavlova.\npavlova featues a crisp crust and\n soft, light inside, topped with fruit\n and whipped cream.'),)
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 11),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffe6f1fa),
                          border: Border.all(
                              width: 1
                          )


                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, size: 16,),
                          Icon(Icons.star, size: 16,),
                          Icon(Icons.star, size: 16,),
                          Icon(Icons.star, size: 16,),
                          Icon(Icons.star, size: 16,),
                          Text('170 Reverd')

                        ],
                      ),


                    ),
                    Container(
                      margin: EdgeInsets.only(top: 11),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffe6f1fa),
                        border: Border.all(
                            width: 1
                        ),


                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.book_sharp, color: Colors.green,),
                              SizedBox(
                                height: 11,
                              ),
                              Text('PREP:'),
                              Text('25 min')
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.green,),
                              SizedBox(
                                height: 11,
                              ),
                              Text('COOK'),
                              Text('1hr')
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.restaurant_rounded, color: Colors.green,),
                              SizedBox(
                                height: 11,
                              ),
                              Text('FEEDS'),
                              Text('5-6'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),),
            Expanded(
              flex: 7,
              child: Container(
                width: 800,
                color: Colors.blue,
                child: Image.asset('assets/images/hp.png', fit: BoxFit.fill,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}