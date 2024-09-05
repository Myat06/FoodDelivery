import 'package:delivery/models/restaurant.dart';
import 'package:delivery/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  final double expandedHeight;

  const MySilverAppBar(
      {super.key,
      required this.child,
      required this.title,
      required this.expandedHeight});

  @override
  Widget build(BuildContext context) {
    final notificationProvider = Provider.of<Restaurant>(context);

    return SliverAppBar(
      expandedHeight: expandedHeight,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Badge(
            alignment: Alignment.topRight,
            isLabelVisible:
                notificationProvider.notificationCount == 0 ? false : true,
            label: Text(
              '${notificationProvider.notificationCount}',
            ),
            child: IconButton(
                onPressed: () {
                  //got to cart page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartPage()));
                },
                icon: const Icon(Icons.shopping_cart)),
          ),
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
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
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        expandedTitleScale: 1,
      ),
    );
  }
}
