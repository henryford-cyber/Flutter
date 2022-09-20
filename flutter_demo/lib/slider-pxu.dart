import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class sliderxpu extends StatelessWidget {
  const sliderxpu({Key? key}) : super(key: key);
  static List<String> Images = [
    "../assets/images/slider1.jpg",
    "../assets/images/slider2.jpg",
    "../assets/images/slider3.jpg"
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
            ...Images.map((e) => styleImg(e)),
          ],
        ),
      ),
    );
  }

  styleImg(String linkImg) {
    return Container(
      height: 250,
      width: 400,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.red,
          border: Border.all(width: 3, color: Colors.red)),
      child: Image.network(
        linkImg,
        fit: BoxFit.cover,
      ),
    );
  }
}
