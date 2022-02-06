import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: null),
          title: Text('금호동 3가'),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: null),
            IconButton(icon: Icon(Icons.menu), onPressed: null),
            IconButton(icon: Icon(Icons.doorbell), onPressed: null),
          ],
          backgroundColor: Colors.white,
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(20),
          child: Row (
            children: [
              Image.asset("dog.webp", width: 150),
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("강아지가 귀엽습니단", style: TextStyle(color: Colors.black, fontSize: 17)),
                    Text("금호도 3가", style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Text("짱짱 귀여워", style: TextStyle(color: Colors.black, fontSize: 13) ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text("4"),
                      ],
                    )
                  ],
                )
              )
            ]
          )
        )
      )
    );
  }
}
