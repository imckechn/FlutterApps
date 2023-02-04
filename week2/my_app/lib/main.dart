import 'package:flutter/material.dart';
import 'recList.dart';

void main() {
  runApp(const MyApp());
}

// class RecipeCard extends StatelessWidget {
//   List<Recipe> recipeList = theList.cast<Recipe>();

//   RecipeCard({this.theList});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: recipeList.length,
//       itemBuilder: (context, index) {
//         return RecipeCard(recipe: recipeList[index]);
//       },
//     );
//   }
// }
class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Options(),
      appBar: AppBar(
        title: Text("Ian McKechnie Recipes"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: 500,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(recipe.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(children: [
            Row(
              children: [
                Text(
                  "Author:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(" " + recipe.recipeAuthor, style: TextStyle(fontSize: 20)),
              ],
            ),
            Row(
              children: [
                Text(
                  "Decription:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(" " + recipe.description, style: TextStyle(fontSize: 15)),
            Row(
              children: [
                Text(
                  "Ingredients:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Wrap(
              children: recipe.ingredients.asMap().entries.map((entry) {
                return Text("${entry.key + 1}. ${entry.value}  ",
                    style: TextStyle(fontSize: 15));
              }).toList(),
              // children: [
              //   for (var item in recipe.ingredients.asMap().entries) ...[
              //     Spacer(),
              //     Text('${item.key + 1}. ${item.value}',
              //         style: TextStyle(fontSize: 15))
              //   ],
              // ],
            ),
            Row(
              children: [
                Text(
                  "Time to Cook:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Align(
              child: Text("${(recipe.cookTime)} + mins",
                  style: TextStyle(fontSize: 12)),
              alignment: Alignment.centerLeft,
            ),
            Row(
              children: [
                Text(
                  "Directions",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: recipe.directions.asMap().entries.map((entry) {
                return Align(
                    alignment: Alignment.centerLeft,
                    child: Text("${entry.key + 1}. ${entry.value}",
                        style: TextStyle(fontSize: 15)));
              }).toList(),
            )
          ])
        ],
      )),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  RecipeCard({required this.recipe});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          // Update the state of the app
          // ...

          await Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MoreInfo(recipe: recipe);
          }));
          // This message will be printed to the console

          // Then close the drawer
        },
        child: Container(
            padding: const EdgeInsets.fromLTRB(1, 10, 1, 0),
            decoration: BoxDecoration(
              color: const Color(0xff000000),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.dstATop),
                image: NetworkImage(recipe.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(recipe.recipeAuthor,
                        style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Icon(Icons.favorite, color: Colors.red)
                  ],
                ),
                Spacer(),
                Spacer(),
                Spacer(),
                Row(
                  children: [
                    Text(recipe.recipeName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.access_alarm, color: Colors.white),
                    Text(recipe.cookingTime,
                        style: TextStyle(fontSize: 8, color: Colors.white)),
                    Spacer(),
                    Icon(Icons.attach_money, color: Colors.white),
                    Text(recipe.amountOfIngredients,
                        style: TextStyle(fontSize: 8, color: Colors.white)),
                    Spacer(),
                    Icon(Icons.assignment_rounded, color: Colors.white),
                    Text(recipe.recipeDifficulty,
                        style: TextStyle(fontSize: 8, color: Colors.white))
                  ],
                )
                // Text(recipe.ingredients.toString()),
                // Text(recipe.directions.toString()),
              ],
            )));
  }
}

class RecipeList extends StatelessWidget {
  List<Recipe> recipeList = theList.cast<Recipe>();

  RecipeList({super.key, required this.recipeList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: recipeList.length,
      itemBuilder: (context, index) {
        return RecipeCard(recipe: recipeList[index]);
      },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Recipes(title: 'Ian McKechnie\'s Recipe Book'),
    );
  }
}

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
                child: Text('Recipe App',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 38))),
          ),
          ListTile(
            leading: Icon(Icons.list_alt_outlined),
            title: const Text('Recipes'),
            onTap: () async {
              // Update the state of the app
              // ...

              await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return const Recipes(title: "Ian McKechnie's Recipe Book");
              }));
              // This message will be printed to the console

              // Then close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Colors.red),
            title: const Text('Favourite Recipes'),
            onTap: () async {
              // Update the state of the app
              // ...

              await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return const Favourite(title: "Ian McKechnies's Recipe Book");
              }));
              // This message will be printed to the console

              // Then close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () async {
              // Update the state of the app
              // ...

              await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return const Settings(title: "Ian McKechnie's Recipe Book");
              }));
              // This message will be printed to the console

              // Then close the drawer
            },
          ),
        ],
      ),
    );
  }
}

class Recipes extends StatefulWidget {
  const Recipes({super.key, required this.title});

  final String title;

  @override
  State<Recipes> createState() => _Recipes();
}

class Favourite extends StatelessWidget {
  const Favourite({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Options(),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Favourite Recipes'),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Options(),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Settings'),
        ),
      ),
    );
  }
}

class _Recipes extends State<Recipes> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Options(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.accessible),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        title: Text(widget.title),
      ),
      body: Center(child: RecipeList(recipeList: theList)
          // primary: false,
          // padding: const EdgeInsets.all(20),
          // crossAxisSpacing: 10,
          // mainAxisSpacing: 10,
          // crossAxisCount: 2,
          // children: <Widget>[RecipeList(recipeList: theList)],
          ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
