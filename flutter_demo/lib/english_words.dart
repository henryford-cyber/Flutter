import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class MyEnglishWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'english words',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List words = [];
  List nounsList = [];

  generateNouns() {
    nouns.take(30).forEach((element) {
      nounsList.add(element.toString());
    });
  }

  generateWords() {
    generateWordPairs().take(30).forEach((element) {
      words.add(element.toString());
    });
  }

  void initState() {
    generateWords();
    generateNouns();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GeeksForGeeks"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Words",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: words.isNotEmpty
                        ? ListView.builder(
                            itemCount: words.length,
                            itemBuilder: (ctx, idx) {
                              return Text(words[idx]);
                            })
                        : Text("Loading..."),
                  )
                ],
              ),
            ),
            Container(
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Nouns",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: nounsList.isNotEmpty
                        ? ListView.builder(
                            itemCount: nounsList.length,
                            itemBuilder: (ctx, idx) {
                              return Text(nounsList[idx]);
                            })
                        : Text("Loading..."),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
