import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(MyApp());
// }

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
          leading: Icon(Icons.menu),
          title: Center(
            child: Text("Flutter GridView"),
          ),
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

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter App Learning',
//         theme: ThemeData(
//           primarySwatch: Colors.green,
//         ),
//         home: MyHomePage());
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key}) : super(key: key);
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<String> images = [
//     "assets/images/1.png",
//     "assets/images/2.jpg",
//     "assets/images/3.jpg",
//     "assets/images/4.jpg",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter ListView"),
//         ),
//         body: ListView.builder(
//           itemBuilder: (BuildContext, index) {
//             return Card(
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(images[index]),
//                 ),
//                 title: Text("This is title"),
//                 subtitle: Text("This is subtitle"),
//               ),
//             );
//           },
//           itemCount: images.length,
//           shrinkWrap: true,
//           padding: EdgeInsets.all(5),
//           scrollDirection: Axis.vertical,
//         ));
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter App Learning',
//         theme: ThemeData(
//           primarySwatch: Colors.green,
//         ),
//         home: MyHomePage());
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key}) : super(key: key);
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

/////////////
  // @override
  // Widget build(BuildContext context) {
  //   final wordPair = WordPair.random();
  //   return MaterialApp(
  //       title: "welcom",
  //       home: Scaffold(
  //           appBar: AppBar(title: Text("Welcom")),
  //           body: Center(
  //             child: Text(wordPair.asUpperCase),
  //           )));
  // }
// }
