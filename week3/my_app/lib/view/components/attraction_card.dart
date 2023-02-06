import 'package:flutter/material.dart';
import '../../core/models/attraction.dart';
import '../pages/attraction_page.dart';

class AttractionCard extends StatelessWidget {
  final List<Attraction> attractions;
  final int index;
  AttractionCard({
    required this.attractions,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AttractionPage(
                    attraction: attractions[index],
                  )));
        },
        child: Container(
          child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: _buildAttractionContent(),
            ),
        ),
      ),
    );
  }

  Column _buildAttractionContent() {
    return Column(
      children: [
        Text(
          attractions[index].title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 220,
           child: Hero(
            tag: attractions[index].title,
            child: Image.network(
              attractions[index].imageURL,
              fit: BoxFit.fill,
            ),
          ),
        ),
        _buildCategoryCards(
            index), // build the list of categories that corresponds to the attraction
        Text(
          attractions[index].address,
          textAlign: TextAlign.center,
        ),
        Icon(attractions[index].isFree // check if the attraction is free or not
            ? Icons.money_off // display a corresponding icon to show its free
            : Icons.attach_money), // show it costs money
      ],
    );
  }

  SingleChildScrollView _buildCategoryCards(int index) {
    return SingleChildScrollView(
      // a horizontally scrollable list for when categories are larger than width (only in conservation area case)
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i in attractions[index].categories)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(i),
              ),
            ),
        ],
      ),
    );
  }
}
