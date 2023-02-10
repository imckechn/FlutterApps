import 'package:flutter/material.dart';

import '../../core/models/attraction.dart';
import './../../attractions_notifier.dart';

void myTapCallback(Attraction elem) {
  String title = elem.title;

  final notifier = Attractions();
  notifier.add(elem);
  //print('user tapped on $title');
}

class AttractionPage extends StatelessWidget {
  Attraction attraction;
  AttractionPage({required this.attraction});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule Attraction"),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Hero(
            tag: attraction.title,
            child: Image.network(
              attraction.imageURL,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.7),
            width: double.infinity,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    attraction.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < attraction.categories.length; i++)
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              attraction.categories[i],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    attraction.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Address",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    attraction.address,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Cost",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    attraction.isFree ? "Free" : "Not Free",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      myTapCallback(attraction);
                    },
                    child: Text("Add"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
