import 'package:e_learning/models/courses.dart';
import 'package:e_learning/models/playlist.dart';
import 'package:flutter/material.dart';

class Coursedetail extends StatefulWidget {
  @override
  _CoursedetailState createState() => _CoursedetailState();
}

class _CoursedetailState extends State<Coursedetail> {
  List<Courses> courselist = Courses.course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: courselist.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 15),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Hero(
                              tag: "hero${courselist[index].img}",
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/${courselist[index].img}"),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "${courselist[index].name}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text("${courselist[index].desc}"),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Author: ${courselist[index].author}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rating: ${courselist[index].rating}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );

                // Text("${courselist[index].playlist[0]}"),
              },
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0,
                    color: Colors.black12.withOpacity(0.3),
                  )
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  PlayList(
                    isdone: true,
                    title: "Lession 1",
                    ontap: () {},
                  ),
                  PlayList(
                    isdone: false,
                    title: "Lession 2",
                  ),
                  PlayList(
                    isdone: false,
                    title: "Lession 3",
                  ),
                  PlayList(
                    isdone: false,
                    title: "Lession 4",
                  ),
                  PlayList(
                    isdone: false,
                    title: "Lession 5",
                  ),
                  PlayList(
                    isdone: false,
                    title: "Lession 6",
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
