import 'package:delivery/components/my_drawer.dart';
import 'package:delivery/components/my_food_tile.dart';
import 'package:delivery/components/my_silver_app_bar.dart';
import 'package:delivery/components/my_tab_bar.dart';
import 'package:delivery/models/food.dart';
import 'package:delivery/models/restaurant.dart';
import 'package:delivery/pages/food_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to a specific category

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMeny) {
    return fullMeny.where((food) => food.category == category).toList();
  }

  //retrun list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            //get individual food
            final food = categoryMenu[index];
            // return food tile UI
            return FoodTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodPage(food: food))),
                food: food);
          });
    }).toList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  MySilverAppBar(
                      expandedHeight: 150,
                      title: MyTabBar(
                        tabController: _tabController,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Divider(
                            indent: 25,
                            endIndent: 25,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ],
                      ))
                ],
            body: Consumer<Restaurant>(
              builder: (context, restaurant, child) => Container(
                color: Theme.of(context).colorScheme.tertiary,
                child: TabBarView(
                    controller: _tabController,
                    children: getFoodInThisCategory(restaurant.menu)),
              ),
            )));
  }
}
