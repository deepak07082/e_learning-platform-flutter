import 'package:flutter/cupertino.dart';

class Courses {
  final String img;
  final String name;
  final String desc;
  final String author;
  final double rating;

  final int videocount;

  Courses(
      {this.desc,
      this.videocount,
      this.author,
      this.rating,
      this.img,
      this.name});
  static List<Courses> course = [
    Courses(
      author: "john",
      videocount: 4,
      desc:
          "UI/Ux designer course .you will learn lot of things. \nrequirements :basic knowledge about computer.",
      img: "i2.jpg",
      name: "UI/UX Designer",
      rating: 3.7,
    ),
    Courses(
      author: "john",
      videocount: 4,
      desc:
          "UI/Ux designer course .you will learn lot of things. \nrequirements :basic knowledge about computer.",
      img: "i2.jpg",
      name: "UI/UX Designer",
      rating: 3.7,
    ),
    Courses(
      author: "john",
      videocount: 4,
      desc:
          "UI/Ux designer course .you will learn lot of things. \nrequirements :basic knowledge about computer.",
      img: "i2.jpg",
      name: "UI/UX Designer",
      rating: 3.7,
    ),
  ];
}
