import 'package:delivery/components/my_button.dart';
import 'package:delivery/models/restaurant.dart';
import 'package:delivery/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Note - When delivery arrive ,you need to show your payment receipt.",
                  style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(25),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                child: Image.asset(
                  'lib/images/payment/kbz.webp',
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                ),
                onTap: () {
                  _showDialog(context, 'lib/images/payment/kbzqr.jpg');
                },
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Image.asset(
                  'lib/images/payment/wave.jpg',
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                ),
                onTap: () {
                  _showDialog(context, 'lib/images/payment/waveqr.jpg');
                },
              ),
              SizedBox(
                height: 90,
              ),
              MyButton(
                  text: "Home",
                  onTap: () {
                    final restaurantProvider =
                        Provider.of<Restaurant>(context, listen: false);
                    restaurantProvider.clearCart();

                    // Navigate to HomePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                imagePath,
                width: 150,
                height: 150,
              ),
              SizedBox(height: 10),
              Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                        restaurant.allTotalPrice.toString() + ' MMK',
                      ))
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
