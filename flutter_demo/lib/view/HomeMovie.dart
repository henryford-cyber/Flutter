import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeMovie extends StatelessWidget {
  HomeMovie({Key? key}) : super(key: key);
  List<String> listMovie = [
    "images/dolittle.jpg",
    "images/backWidow.jpg",
    "images/dolittle.jpg",
    "images/backWidow.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(context),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(
                    (0.1),
                  ),
                  Colors.black.withOpacity(
                    (0.9),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: buildMovieSlider(context),
          ),
          Align(),
        ],
      ),
    );
  }

  buildBackground(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return PageView.builder(
      itemCount: listMovie.length,
      itemBuilder: (context, index) {
        return Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(listMovie[index]),
                fit: BoxFit.cover,
              ),
            ));
      },
    );
  }

  buildBuySticketButton(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
      height: size.height * .10,
      width: size.width,
      decoration: BoxDecoration(color: Colors.orange),
      child: Center(
        child: Text(
          "Buy ticket",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }

  buildMovieSlider(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
        items: listMovie.map(
          (e) {
            return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(e))));
          },
        ).toList(),
        options: CarouselOptions(
          height: size.height / 2,
          enableInfiniteScroll: true,
          autoPlay: true,
        ));
  }
}
