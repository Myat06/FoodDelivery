import 'package:delivery/components/my_current_location.dart';
import 'package:delivery/components/my_description_box.dart';
import 'package:delivery/components/my_drawer.dart';
import 'package:delivery/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: const Text(
          "FOOD4U",
          style: TextStyle(shadows: [
            Shadow(
              blurRadius: 10.0,
              color: Colors.grey,
              offset: Offset(5.0, 5.0),
            ),
          ], fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Theme.of(context).colorScheme.tertiary,
            ),
            MyCurrentLocation(),
            const MyDescriptionBox(),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
                "Are You Hungry?",
                style:
                    TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
                "Don't Wait",
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.grey,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Let's start to order food now",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildListItem("Humbger", 'lib/images/burgers/burger2.png',
                      "3500", Colors.grey, Colors.white),
                  _buildListItem("Salad", 'lib/images/salads/salard1.png',
                      "2500", Colors.grey, Colors.white),
                  _buildListItem("Ice cream", 'lib/images/sides/ice2.png',
                      "1500", Colors.grey, Colors.white),
                  _buildListItem(
                      "Sunset Cake",
                      'lib/images/desserts/dessert1.png',
                      "2500",
                      Colors.grey,
                      Colors.white),
                  _buildListItem(
                      "Bubble MilkTea",
                      'lib/images/drinks/drink1.png',
                      "2500",
                      Colors.grey,
                      Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildListItem(String foodName, String imgPath, String price, Color bigColor,
      Color txtColor) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ShopPage()));
        },
        child: Container(
          height: 175,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: bigColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                  tag: foodName,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        imgPath,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 25,
              ),
              Text(
                foodName,
                style: TextStyle(fontSize: 17, color: txtColor),
              ),
              Text(
                price + ' MMK',
                style: TextStyle(fontSize: 17, color: txtColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
