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
          title: Text(
            '앱임',
          ),
        ),
        body: SizedBox(
          child: IconButton(
            icon: Icon(Icons.star),
            onPressed: () {},
          )
        )
      )
    );
  }
}
