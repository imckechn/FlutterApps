import 'package:flutter/material.dart';

import '../../core/models/attraction.dart';
import './../../attractions_notifier.dart';

class ChildPageState extends State<ChildPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      width: double.infinity,
      alignment: Alignment.center,
      child: ElevatedButton(
        child: Text("Call method in parent"),
        onPressed: () => widget.function(), // calls method in parent
      ),
    );
  }
}

class ChildPage extends StatefulWidget {
  final VoidCallback function;

  ChildPage({Key? key, required this.function}) : super(key: key);

  @override
  ChildPageState createState() => ChildPageState();
}


void myTapCallback(Attraction elem) {
  String title = elem.title;

  final notifier = Attractions();
  notifier.add(elem);
  //print('user tapped on $title');
}

class AttractionPage extends StatelessWidget {
  Attraction attraction;
  AttractionPage({required this.attraction});

  final GlobalKey<ChildPageState> _key = GlobalKey();

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
                      final snackBar = SnackBar(
                        content: Text('Added ${attraction.title} to schedule'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
