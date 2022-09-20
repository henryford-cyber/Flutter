// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
 
// import 'package:flutter/widgets.dart';

// class SliderPages extends StatefulWidget { 

//   List<String> _lsImages= [
//     "../assets/images/1.png",
//     "../assets/images/2.jpg",
//     "../assets/images/3.jpg",
//     "../assets/images/4.jpg",
//     "../assets/images/5.jpg",
//     "../assets/images/6.jpg"
//   ];
//   @override
//   State<SliderPages> createState() => _SliderPagesState();

// }
// class _SliderPagesState extends State<SliderPages> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             blockslider(),
//             blockInticator(),
//           ],
//         ),
//       ),
//     );
//   }
// var currentIndex = 0;
//   blockslider() {
//     return Container(
//       width:double.infinity,
//       height: 300,
//       child: PageView(
//        scrollDirection: Axis.horizontal,
//       children: [
//         ..._lsImages.map((e)=>{
//           return Images.assets(e);
//         }),
//       ],
//     ),
//     );
//   }

//   blockInticator() {
//     return Container(
//       alignment: Alignment.center,
//       height:40,
//       width:double.infinity,
//       child: ListView.builder(
//         shrinkWrap: true,
//         scrollDirection:Axis.horizontal,
//         itemCount: _lsImages.length,
//         itemBuilder:(context,index) {
//           return Container(
//             height:((currentIndex==index) ?30:20),
//             width:((currentIndex==index) ?30:20),
//             margin: EdgeInsets.all(10),
//             decoration:BoxDecoration()
//           );
//         }
//       )
//     );
//   }
// }
