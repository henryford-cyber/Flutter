import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/movie.dart';

class MovieAttandee extends StatefulWidget {
  const MovieAttandee({Key? key}) : super(key: key);

  @override
  State<MovieAttandee> createState() => _MovieAttandeeState();
}

class _MovieAttandeeState extends State<MovieAttandee> {
  List<Movie> listMovie = Movie.ListMovie();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            // leading: Icon(Icons.arrow_back_ios),
            // title: Text("Điểm danh (Session 4)"),
            ),
        body: slider(),
      ),
    );
  }

  slider() {
    return SingleChildScrollView(
        child: Column(children: [
      ...listMovie.map((e) => sliderItem(e)),
    ]));
  }

  sliderItem(Movie movie) {
    return Container(
      child: Column(
        children: [],
      ),
    );
  }
}
