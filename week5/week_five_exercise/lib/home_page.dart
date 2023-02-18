import 'package:flutter/material.dart';

String jsonString = """[
  {
    "fruit name": "bananas",
    "image name": "bananas.png",
    "color": "yellow",
    "isFavourite": true
  },
  {
    "fruit name": "strawberries",
    "image name": "strawberries.jpeg",
    "color": "red",
    "isFavourite": true
  },
  {
    "fruit name": "grapes",
    "image name": "grapes.jpeg",
    "color": "green",
    "isFavourite": false
  },
  {
    "fruit name": "apples",
    "image name": "apples.jpeg",
    "color": "red",
    "isFavourite": false
  },
  {
    "fruit name": "watermelon",
    "image name": "watermelon.jpeg",
    "color": "green",
    "isFavourite": true
  },
  {
    "fruit name": "oranges",
    "image name": "oranges.jpeg",
    "color": "orange",
    "isFavourite": false
  },
  {
    "fruit name": "blueberries",
    "image name": "blueberries.jpeg",
    "color": "blue",
    "isFavourite": true
  },
  {
    "fruit name": "lemons",
    "image name": "lemons.jpeg",
    "color": "yellow",
    "isFavourite": false
  },
  {
    "fruit name": "pineapple",
    "image name": "pineapples.jpeg",
    "color": "yellow",
    "isFavourite": false
  },
  {
    "fruit name": "cherries",
    "image name": "cherries.jpeg",
    "color": "red",
    "isFavourite": false
  },
  {
    "fruit name": "cantaloupe",
    "image name": "cantaloupe.jpeg",
    "color": "orange",
    "isFavourite": true
  },
  {
    "fruit name": "raspberries",
    "image name": "raspberries.jpeg",
    "color": "red",
    "isFavourite": false
  },
  {
    "fruit name": "pears",
    "image name": "pears.jpeg",
    "color": "green",
    "isFavourite": false
  },
  {
    "fruit name": "limes",
    "image name": "limes.jpeg",
    "color": "green",
    "isFavourite": false
  },
  {
    "fruit name": "blackberries",
    "image name": "blackberries.png",
    "color": "purple",
    "isFavourite": true
  },
  {
    "fruit name": "clementines",
    "image name": "clementines.jpeg",
    "color": "orange",
    "isFavourite": false
  },
  {
    "fruit name": "mangoes",
    "image name": "mangoes.jpeg",
    "color": "orange",
    "isFavourite": true
  },
  {
    "fruit name": "plums",
    "image name": "plums.jpeg",
    "color": "orange",
    "isFavourite": false
  }
]""";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ian's Fruit List"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              'images/bananas.png',
              width: 50,
              height: 50,
            ),
            title: Text("Banana"),
            subtitle: Text("Colour: Yellow"),
            trailing: Icon(Icons.check_box),
          ),
          ListTile(
            leading: Image.asset(
              'images/strawberries.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Starberries"),
            subtitle: Text("A red fruit."),
            trailing: Icon(Icons.check_box),
            onTap: () {
              print("Tapped on s");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/grapes.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Grapes"),
            subtitle: Text("A green fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Grapes");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/apples.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Apples"),
            subtitle: Text("A red fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Apples");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/watermelon.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Watermelon"),
            subtitle: Text("A green fruit."),
            trailing: Icon(Icons.check_box),
            onTap: () {
              print("Tapped on Watermelon");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/oranges.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Oranges"),
            subtitle: Text("A orange fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Oranges");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/blueberries.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Blueberries"),
            subtitle: Text("A blue fruit."),
            trailing: Icon(Icons.check_box),
            onTap: () {
              print("Tapped on Blueberries");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/lemons.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Lemons"),
            subtitle: Text("A yellow fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Lemons");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/pineapples.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Pineapples"),
            subtitle: Text("A yellow fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Pineapples");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/cherries.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Cherries"),
            subtitle: Text("A red fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Cherries");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/cantaloupes.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Cantaloupe"),
            subtitle: Text("A orange fruit."),
            trailing: Icon(Icons.check_box),
            onTap: () {
              print("Tapped on Cantaloupe");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/raspberries.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Raspberries"),
            subtitle: Text("A red fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Raspberries");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/pears.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Pears"),
            subtitle: Text("A green fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Pears");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/limes.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Limes"),
            subtitle: Text("A green fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Limes");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/blackberries.png',
              width: 50,
              height: 50,
            ),
            title: Text("Blackberries"),
            subtitle: Text("A purple fruit."),
            trailing: Icon(Icons.check_box),
            onTap: () {
              print("Tapped on Blackberries");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/clementines.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("clementines"),
            subtitle: Text("A orange fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Mangoes");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/mangoes.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Mangoes"),
            subtitle: Text("A yellow fruit."),
            trailing: Icon(Icons.check_box),
            onTap: () {
              print("Tapped on Mangoes");
            },
          ),
          ListTile(
            leading: Image.asset(
              'images/plums.jpeg',
              width: 50,
              height: 50,
            ),
            title: Text("Plum"),
            subtitle: Text("A orange fruit."),
            trailing: Icon(Icons.heart_broken),
            onTap: () {
              print("Tapped on Kiwi");
            },
          ),
        ],
      ),
    );
  }
}

// ------ The loading screen ------
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircularProgressIndicator(), // A loading indicator
//             SizedBox(height: 25.0),
//             Text(
//                 "Loading Fruit ..."), // A text to show while the page is loading
//           ],
//         ),
//       ),
//     );
//   }
// }
