import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(gridview());
}

class gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: [
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text("Home", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  Text("Account", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  Text("Messages", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.list_alt,
                    color: Colors.white,
                  ),
                  Text("Orders", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ],
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ));
  }
}
