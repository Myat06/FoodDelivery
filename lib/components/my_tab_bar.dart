import 'package:delivery/models/food.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: Theme.of(context).colorScheme.inversePrimary,
        unselectedLabelColor: Theme.of(context).colorScheme.tertiary,
        labelColor: Theme.of(context).colorScheme.inversePrimary,
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
