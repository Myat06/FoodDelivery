import 'package:delivery/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class MyReceipt extends StatelessWidget {
  MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current time
    DateTime now = DateTime.now();

    // Add 15 minutes to the current time
    DateTime nowPlus15Minutes = now.add(Duration(minutes: 15));

    // Format the new time
    String formattedTime = DateFormat(' HH:mm:a').format(nowPlus15Minutes);

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Center(
        child: Column(
          children: [
            const Text("Thank you for your order!"),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) =>
                    Text(restaurant.displayCartReceipt()),
              ),
            ),
            const SizedBox(height: 25),
            Text("Estimated delivery time is: $formattedTime"),
          ],
        ),
      ),
    );
  }
}
