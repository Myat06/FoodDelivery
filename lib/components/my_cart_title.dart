import 'package:delivery/components/my_quantity_selector.dart';
import 'package:delivery/models/cart_item.dart';
import 'package:delivery/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTitle extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTitle({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // food image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),

                        //name and price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //food name
                            Text(cartItem.food.name),

                            //food price
                            Text(
                              cartItem.food.price.toString() + 'MMK',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            // increment or decrement quantity
                            MyQuantitySelector(
                                quantity: cartItem.quantity,
                                food: cartItem.food,
                                onDecrement: () {
                                  restaurant.removeFrontCart(cartItem);
                                },
                                onIncrement: () {
                                  restaurant.addToCart(
                                      cartItem.food, cartItem.selectedAddon);
                                })
                          ],
                        ),
                      ],
                    ),
                  ),

                  //addons
                  SizedBox(
                    height: cartItem.selectedAddon.isEmpty ? 0 : 60,
                    child: ListView(
                      padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      children: cartItem.selectedAddon
                          .map((addon) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      // addon name
                                      Text(addon.name),

                                      //addon prise
                                      Text(addon.price.toString() + 'MMK')
                                    ],
                                  ),
                                  shape: StadiumBorder(
                                      side: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                                  onSelected: (vlaue) {},
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  labelStyle: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary,
                                      fontSize: 12),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ));
  }
}
