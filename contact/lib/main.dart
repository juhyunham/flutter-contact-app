import 'package:flutter/material.dart';

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
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext contactContext) {

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(context: contactContext, builder: (context) {
                return AlertDialog (
                  title: Text("팝업 메시지"),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                          TextField()
                        ]
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: Text("CANCEL"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ]
                );
            });
          }
        ),
        appBar: AppBar(title: Text('연락처 앱')),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(like[index].toString()),
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