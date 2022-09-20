import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/Provider/NewsProvider.dart';
import 'package:provider/provider.dart';

class newsPage extends StatelessWidget {
  const newsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var newsProvider = Provider.of<NewsProvider>(context);
    newsProvider.getList();
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        ...newsProvider.list.map((e) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                height: 250,
                width: 500,
                child: Image.network(e.urlToImage ?? "", fit: BoxFit.cover),
              ),

              Text(e.title ?? "",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(e.content ?? ""),
              // Text(e.urlToImage ?? ""),
            ],
          );
        })
      ],
    ));
  }
}
