import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_demo/model/NewsModel.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class NewsProvider extends ChangeNotifier {
  List<NewsModel> list = [];
  void getList() async {
    String apiURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5ac76f64756d4390b16a4879a4f8b099";
    var client = http.Client();
    var jsonString = await client.get(Uri.parse(apiURL));
    var jsonObject = jsonDecode((jsonString.body));
    var newsListObject = jsonObject['articles'] as List;
    list = newsListObject.map((e) {
      return NewsModel(
        author: e['author'],
        title: e['title'],
        urlToImage: e['urlToImage'],
        url: e['url'],
        content: e['content'],
      );
    }).toList();
    notifyListeners();
  }
}
