import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:core';

class Student {
  final String id;
  final String firtName;
  final String lastName;
  final String images;
  final DateTime dob;
  bool attandee = false;

  Student(this.id, this.firtName, this.lastName, this.images, this.dob);

  static List<Student> MackStudent() {
    List<Student> rs = [];
    rs.add(Student(
        'C123',
        'Nam',
        'Phan Phuoc Phuong',
        'https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/299103740_815380349833735_1318591167595614021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XMdmY2_d9EcAX-nJbB_&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9-0Kr81LJq3Ii7Tqu5eI4Gd_15DdaPxdQX0V4OZ8-big&oe=63131B23',
        DateTime(2001, 2, 11)));
    rs.add(Student(
        'C343',
        'Hoang',
        'Nguyen Van',
        'https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/299103740_815380349833735_1318591167595614021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XMdmY2_d9EcAX-nJbB_&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9-0Kr81LJq3Ii7Tqu5eI4Gd_15DdaPxdQX0V4OZ8-big&oe=63131B23',
        DateTime(2001, 2, 11)));
    rs.add(Student(
        'C423',
        'Tan',
        'Tran Nhat',
        'https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/299103740_815380349833735_1318591167595614021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XMdmY2_d9EcAX-nJbB_&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9-0Kr81LJq3Ii7Tqu5eI4Gd_15DdaPxdQX0V4OZ8-big&oe=63131B23',
        DateTime(2001, 2, 11)));
    rs.add(Student(
        'C453',
        'Dat',
        'Phan Van',
        'https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/299103740_815380349833735_1318591167595614021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XMdmY2_d9EcAX-nJbB_&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9-0Kr81LJq3Ii7Tqu5eI4Gd_15DdaPxdQX0V4OZ8-big&oe=63131B23',
        DateTime(2001, 2, 11)));
    rs.add(Student(
        'C853',
        'Tai',
        'Tran Huu',
        'https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/299103740_815380349833735_1318591167595614021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XMdmY2_d9EcAX-nJbB_&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9-0Kr81LJq3Ii7Tqu5eI4Gd_15DdaPxdQX0V4OZ8-big&oe=63131B23',
        DateTime(2001, 2, 11)));
    rs.add(Student(
        'C384',
        'Hieu',
        'Nguyen Phan Huy',
        'https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/299103740_815380349833735_1318591167595614021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XMdmY2_d9EcAX-nJbB_&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9-0Kr81LJq3Ii7Tqu5eI4Gd_15DdaPxdQX0V4OZ8-big&oe=63131B23',
        DateTime(2001, 2, 11)));
    rs.add(Student(
        'C352',
        'Duy',
        'Phan Van',
        'https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/299103740_815380349833735_1318591167595614021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XMdmY2_d9EcAX-nJbB_&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9-0Kr81LJq3Ii7Tqu5eI4Gd_15DdaPxdQX0V4OZ8-big&oe=63131B23',
        DateTime(2001, 2, 11)));
    rs.add(Student(
        'C386',
        'Canh',
        'Tran ',
        'https://scontent.fhan3-1.fna.fbcdn.net/v/t39.30808-6/299103740_815380349833735_1318591167595614021_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XMdmY2_d9EcAX-nJbB_&_nc_ht=scontent.fhan3-1.fna&oh=00_AT9-0Kr81LJq3Ii7Tqu5eI4Gd_15DdaPxdQX0V4OZ8-big&oe=63131B23',
        DateTime(2001, 2, 11)));
    return rs;
  }
}
