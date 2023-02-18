import 'package:flutter/material.dart';
//import '../../core/models/scheduler_modifier.dart';
import '../../core/models/attraction.dart';
import '../../core/models/guelph_attraction.dart';
import './attraction_page.dart';
//import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';

// ignore: must_be_immutable
class AttractionsSchedulePage extends StatelessWidget {
  //List<Attraction> attractions = [];
  //List<Attraction> attractions = ItemNotifier().getItems();
  @override
  Widget build(BuildContext context) {
    //final itemNotifier = Provider.of<ItemNotifier>(context);
    //final attractions = itemNotifier.getItems();
    return Consumer(
      builder: (context, ref, _) {
        final notifier = ref.watch(counterProvider.notifier);
        return Center(
          child: notifier.isEmpty()
              ? const Center(
                  child: Text("No Attractions Scheduled",
                      style: TextStyle(fontSize: 30.0)),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      title: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              notifier.getImage(index),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(notifier.getTitle(index)),
                              Text(notifier.getAddress(index),
                                  style: const TextStyle(fontSize: 14)),
                            ],
                          ),
                        ],
                      ),
                      children: [
                        Text(notifier.getDescription(index),
                            style: const TextStyle(fontSize: 20))
                      ],
                    );
                  },
                  itemCount: notifier.getLength(),
                ),
        );
      },
    );
  }
}
