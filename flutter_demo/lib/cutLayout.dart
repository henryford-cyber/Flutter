import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class cutLayout extends StatelessWidget {
  cutLayout({Key? key}) : super(key: key);
  List<String> Images = [
    "../assets/images/2.jpg",
    "../assets/images/3.jpg",
    "../assets/images/4.jpg",
    "../assets/images/5.jpg",
    "../assets/images/6.jpg",
    "../assets/images/7.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildlistIcon(context),
          SizedBox(height: 20),
          buildText(context),
          SizedBox(height: 20),
          buildSearchField(context),
          SizedBox(height: 20),
          buildPlaceText(context),
          SizedBox(height: 20),
          buildGridview(context),
        ],
      ),
    ));
  }

  buildlistIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        IconButton(onPressed: () {}, icon: Icon(Icons.extension))
      ],
    );
  }

  buildText(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: 'Welcome,',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: Colors.black,
          ),
          children: [
            TextSpan(
                text: ' Namphan ',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ))
          ]),
    );
  }

  buildSearchField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: const BorderSide(
              color: Colors.grey,
            )),
      ),
    );
  }

  buildPlaceText(BuildContext context) {
    return Text("Save Places",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
  }

  buildGridview(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          ...Images.map((e) {
            return Container(
              height: 400,
              child: Image.asset(e, fit: BoxFit.fill),
            );
          })
        ],
      ),
    );
  }
}
