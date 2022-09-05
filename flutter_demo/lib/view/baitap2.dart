import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/Student.dart';

class StudentAttandee extends StatefulWidget {
  const StudentAttandee({Key? key}) : super(key: key);

  @override
  State<StudentAttandee> createState() => _StudentAttandeeState();
}

class _StudentAttandeeState extends State<StudentAttandee> {
  List<Student> _list = Student.MackStudent();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Điểm danh (Session 4)"),
        ),
        body: slider(),
      ),
    );
  }

  slider() {
    return SingleChildScrollView(
        child: Column(children: [
      ..._list.map((e) => sliderItem(e)),
    ]));
  }

  sliderItem(Student student) {
    return Container(
      child: Column(
        children: [],
      ),
    );
  }
}
