import 'package:flutter/material.dart';
import '../../attractions_notifier.dart';
import 'package:redux/redux.dart';


class AttractionsSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final attractions = Attractions();
    List elems = attractions.getAll();
    List temp = context.watch<Attractions>().getAll();

    Attractions.addListener(() => "Updated!"));

    print('Elems: $elems');
    if (elems.length == 0) {
      return Center(
        child: Text("Schedule Page"),
      );
    } else {
      return Center(
        child: Column(
          children: [
            //Row(children: elems.toList())]));
            Text("Hell there")
          ],
        ),
      );
    }
  }
}
