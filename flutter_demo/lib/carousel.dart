import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/widgets.dart';

class Sliderpage extends StatefulWidget {
  const Sliderpage({Key? key}) : super(key: key);

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  List<String> lsImages = [
    "../assets/images/1.png",
    "../assets/images/2.jpg",
    "../assets/images/3.jpg",
    "../assets/images/4.jpg",
    "../assets/images/5.jpg",
    "../assets/images/6.jpg"
  ];
  int curreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [blockSlider(), blockIndicator()],
        ),
      ),
    );
  }

  blockSlider() {
    return Container(
      width: double.infinity,
      height: 300,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          ...lsImages.map((e) {
            return Image.asset(e);
          })
        ],
        onPageChanged: (index) {
          print(index);
          setState(() {
            curreenIndex = index;
          });
        },
      ),
    );
  }

  blockIndicator() {
    return Container(
      height: 60,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: lsImages.length,
          itemBuilder: (context, index) {
            return Container(
              height: ((curreenIndex == index) ? 30 : 20),
              width: ((curreenIndex == index) ? 30 : 20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      ((curreenIndex == index) ? Colors.orange : Colors.grey)),
            );
          }),
    );
  }
}
