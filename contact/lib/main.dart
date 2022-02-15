import 'package:flutter/material.dart';
import 'dart:core';

void main() {
  runApp( MaterialApp(
    home: MyApp())
  );
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total = 3;
  var name = <String>['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  addName(user) {
    setState(() {
      name.add(user);
    });
  }

  addOne() {
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext contactContext) {

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(context: contactContext, builder: (context) {
                return DialogUI(addOne: addOne, addName: addName);
            });
          },
          child: Text("등록")
        ),
        appBar: AppBar(
          title: Center(
            child: Row(
              children: [
                Text("연락처 앱"),
                Text(name.length.toString()+'명'),
              ],)),
          backgroundColor: Color.fromARGB(255, 77, 160, 61),
        ),
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(name[index]),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    like[index]++;
                  });
                }, 
                icon: Icon(Icons.favorite))
            );
          },
        ),
        bottomNavigationBar: BottomNavBar()
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

class DialogUI extends StatelessWidget {
  DialogUI({ Key? key, this.addOne, this.addName }) : super(key: key);

  var inputData = TextEditingController();
  final addOne;
  final addName;

  @override
  Widget build(BuildContext context) {
    return AlertDialog (
        title: Text("등록할 친구를 입력하세요."),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
                TextField( controller: inputData,)
              ]
            ),
          ),
          actions: [
            TextButton(
              child: Text("취소"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("등록"),
              onPressed: () {
                addOne();
                addName(inputData.text);
              },
            )
          ]
      );
  }
}