import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            setState((){
              a++;
            });
          },),
        appBar: AppBar(title: Text('연락처 앱')),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset("dog.webp"),
              title: Text("함사랑"),
            );
          },
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