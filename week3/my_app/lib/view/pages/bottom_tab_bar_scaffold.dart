import 'package:flutter/material.dart';
import './add_attraction.dart';
import './attraction_list_page.dart';
import './attraction_schedule_page.dart';

class BottomTabBarScaffold extends StatefulWidget {
  @override
  State<BottomTabBarScaffold> createState() => _BottomTabBarScaffoldState();
}

class _BottomTabBarScaffoldState extends State<BottomTabBarScaffold> {
    List<String> categories = [
    "Picnic",
    'Playground',
    'Hiking',
    'Boating',
    'Ice-Cream',
    'Tea',
    'Flowers',
    'Swimming',
    'Camping',
    'Education'
  ];
  List<bool> categories_bool = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];

  Map<String, bool> get categoryAttractions {
    Map<String, bool> tempMap = {};
    for(int i = 0; i < categories.length; i++) {
      tempMap[categories[i]] = categories_bool[i];
    }
    return tempMap;
  }

  void updateCategories(List<bool> newCategories) {
    setState(() {
      for(int i = 0; i < newCategories.length; i++) {
              categories_bool[i] = newCategories[i];
            }
    });
  }


  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guelph Attractions"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return FilterDialog(
                      categories: categories,
                      categories_bool: categories_bool,
                      updateCategories: updateCategories,
                    );
                  });
            },
            icon: Icon(Icons.filter_list_alt),
            //icon: Icon(Icons.calendar_today),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddAttraction()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: _selectedIndex == 0
          ? AttractionListPage(categoriesToShow: categoryAttractions)
          : AttractionsSchedulePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Attractions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Scheduled",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class FilterDialog extends StatefulWidget {
  const FilterDialog({
    Key? key,
    required this.categories,
    required this.categories_bool,
    required this.updateCategories,
  }) : super(key: key);

  final List<String> categories;
  final List<bool> categories_bool;
  final Function(List<bool>) updateCategories;

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  List<String> categories_copy = [];
  List<bool> categories_bool_copy = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    categories_copy = [...widget.categories];
    categories_bool_copy = [...widget.categories_bool];
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double minSize;
      if (width < height) {
        minSize = width;
      } else {
        minSize = height;
      }

    return AlertDialog(
      title: Text("Adjust Filters"),
      content: Container(
        width: minSize,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              children: [
                for (int i = 0; i < widget.categories.length; i++)
                  _buildCategoryCard(i)
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Apply'),
          onPressed: () {
            widget.updateCategories(categories_bool_copy);
            // widget.categories_bool = categories_bool_copy;
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget _buildCategoryCard(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          categories_bool_copy[index] = !categories_bool_copy[index];
        });
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Card(
            color:
                categories_bool_copy[index] ? Colors.grey[300] : Colors.white,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(categories_copy[index]),
            ),
          ),
          if (categories_bool_copy[index])
            Icon(
              Icons.check_circle,
              size: 12,
            ),
        ],
      ),
    );
  }
}
