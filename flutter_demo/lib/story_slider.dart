import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StorySlider extends StatelessWidget {
  const StorySlider({Key? key}) : super(key: key);
  static List<String> Images = [
    "../assets/images/1.png",
    "../assets/images/2.jpg",
    "../assets/images/3.jpg",
    "../assets/images/4.jpg",
    "../assets/images/5.jpg",
    "../assets/images/6.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: slider(),
    ));
  }

  slider() {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...Images.map((e) => sliderItem(e)),
          ],
        ),
      ),
    );
  }

  sliderItem(String imgURL) {
    return Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.red,
          border: Border.all(width: 3, color: Colors.red)),
      child: Image.network(
        imgURL,
        fit: BoxFit.cover,
      ),
    );
  }
}
