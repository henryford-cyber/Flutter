import 'dart:js';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/Provider/NewsProvider.dart';
import 'package:flutter_demo/carousel.dart';
import 'package:flutter_demo/carouselSlider.dart';
import 'package:flutter_demo/cutLayout.dart';
import 'package:flutter_demo/loginPages.dart';
import 'package:flutter_demo/model/movie.dart';
import 'package:flutter_demo/slider-pxu.dart';
import 'package:flutter_demo/story_slider.dart';
import 'package:flutter_demo/view/HomeMovie.dart';
import 'package:flutter_demo/view/baitap2.dart';
import 'package:flutter_demo/view/newsPage.dart';
import 'package:provider/provider.dart';
import 'Destination.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NewsProvider()),
      ],
      child: MaterialApp(
        home: newsPage(),
      ),
    ),
  );
}
