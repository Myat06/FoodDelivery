import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.tertiary),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Delivery fee',
                style: mySecondaryTextStyle,
              ),
              Text(
                '2,000 kyat',
                style: myPimaryTextStyle,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Delivery time',
                style: mySecondaryTextStyle,
              ),
              Text(
                '15-30 min',
                style: myPimaryTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
