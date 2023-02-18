import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import '../../core/models/attraction.dart';
import '../../core/models/scheduler_modifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';

class AttractionPage extends ConsumerWidget {
  Attraction attraction;
  //ItemNotifier _notifier = ItemNotifier();
  AttractionPage({required this.attraction});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, _) {
        final notifier = ref.watch(counterProvider.notifier);
        return Scaffold(
          appBar: AppBar(
            title: const Text("Schedule Attraction"),
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
                          fontSize: 20,
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
                          //ref.watch(counterProvider.notifier).add(attraction);
                          notifier.add(attraction);
                          final snackBar = SnackBar(
                            content:
                                Text('${attraction.title} has been added!'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                notifier.deleteLast();
                              },
                            ),
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
      },
    );
  }
}
