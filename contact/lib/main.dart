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
        appBar: AppBar(),
        body: ListView(
          children: [
            Row(
              children: [
                Icon(Icons.sentiment_satisfied_alt),
                Text("홍길동")
              ],
            ),
            Row(
              children: [
                Icon(Icons.sentiment_satisfied_alt),
                Text("홍길동")
              ],
            ),
            Row(
              children: [
                Icon(Icons.sentiment_satisfied_alt),
                Text("홍길동")
              ],
            )
          ]
        ),
        bottomNavigationBar: BottomNavBar(),
      )
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar (
      child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.phone), onPressed: () {}),
              IconButton(icon: Icon(Icons.message), onPressed: () {}),
              IconButton(icon: Icon(Icons.contact_page), onPressed: () {})
            ],
        )
      )
      
    );
  }
}