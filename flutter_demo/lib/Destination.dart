import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class DestinationScr extends StatelessWidget {
  const DestinationScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              child: imgHeader(),
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 30),
                child: Row(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Dai Noi Hue",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Tp.Hue Viet Nam",
                          style: TextStyle(
                            color: Color.fromARGB(172, 172, 172, 172),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                  Spacer(),
                  Row(children: [
                    Icon(Icons.star, color: Colors.redAccent),
                    Text("41"),
                  ])
                ]))
          ],
        ),
      ),
    );
  }

  imgHeader() {
    return Image.network("../assets/dainoihue.jpg");
  }

  titleHeader() {
    return Text("Dai Noi Kinh Thanh Hue");
  }
}
