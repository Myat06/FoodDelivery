import 'package:collection/collection.dart';
import 'package:delivery/models/cart_item.dart';
import 'package:delivery/models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers

    Food(
        name: "Beef Burger",
        description:
            "A juicy beef with melted cheddar , lettuce , tomato , and a hint of onion and pickle.",
        imagePath: 'lib/images/burgers/burger1.png',
        price: 3500,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 500),
          Addon(name: "Extra tomato", price: 500),
        ]),
    Food(
        name: "Double Beef Burger",
        description:
            "A juicy beef with melted cheddar , lettuce , tomato , and a hint of onion and pickle.",
        imagePath: 'lib/images/burgers/burger2.png',
        price: 4500,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 500),
          Addon(name: "Extra tomato", price: 500),
        ]),
    Food(
        name: "Ultra Beef Burger",
        description:
            "A juicy beef with melted cheddar , lettuce , tomato , and a hint of onion and pickle.",
        imagePath: 'lib/images/burgers/burger3.png',
        price: 5000,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 500),
          Addon(name: "Extra tomato", price: 500),
        ]),
    Food(
        name: "Cispy Chicken Burger",
        description:
            "A juicy chicken with melted cheddar , lettuce , tomato , and a hint of onion and pickle.",
        imagePath: 'lib/images/burgers/burger4.jpg',
        price: 3500,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 500),
          Addon(name: "Extra meal", price: 1000),
          Addon(name: "Extra tomato", price: 500)
        ]),
    Food(
        name: "Mini Burger",
        description:
            "A juicy beef with melted cheddar , lettuce , tomato , and a hint of onion and pickle.",
        imagePath: 'lib/images/burgers/burger5.jpg',
        price: 4000,
        category: FoodCategory.Burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 500),
          Addon(name: "Extra mini burger", price: 1500),
        ]),

    // salads

    Food(
        name: "Side House Salad",
        description: "Fresh Romaine Lettuce,Roma Tomatoes & Cucumber",
        imagePath: 'lib/images/salads/salard1.png',
        price: 2500,
        category: FoodCategory.Salads,
        availableAddons: [Addon(name: "Extra salad", price: 500)]),
    Food(
        name: "Vegetable Salad",
        description: "Fresh Romaine Lettuce,Roma Tomatoes & Cucumber",
        imagePath: 'lib/images/salads/salad2.jpg',
        price: 2500,
        category: FoodCategory.Salads,
        availableAddons: [Addon(name: "Extra salad", price: 500)]),
    Food(
        name: "Italian Salad",
        description: "Fresh Romaine Lettuce,Roma Tomatoes & Cucumber",
        imagePath: 'lib/images/salads/salard3.png',
        price: 3000,
        category: FoodCategory.Salads,
        availableAddons: [Addon(name: "Extra salad", price: 500)]),
    Food(
        name: "Healthy Salad",
        description: "Fresh Romaine Lettuce,Roma Tomatoes & Cucumber",
        imagePath: 'lib/images/salads/salard4.png',
        price: 2500,
        category: FoodCategory.Salads,
        availableAddons: [Addon(name: "Extra salad", price: 500)]),
    Food(
        name: "Meal Salad",
        description: "Fresh Romaine Lettuce,Roma Tomatoes & Cucumber",
        imagePath: 'lib/images/salads/salard5.png',
        price: 3500,
        category: FoodCategory.Salads,
        availableAddons: [
          Addon(name: "Extra meal", price: 1000),
          Addon(name: "Extra salad", price: 500)
        ]),

    // Ice cream

    Food(
        name: "Choco-Milk Ice-Cream",
        description:
            "Frozen dessert typically made from milk or cream that has been flavoured with a sweetener",
        imagePath: 'lib/images/sides/ice1.png',
        price: 1500,
        category: FoodCategory.IceCream,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),
    Food(
        name: "Rainbow Ice-Cream",
        description:
            "Frozen dessert typically made from milk or cream that has been flavoured with a sweetener",
        imagePath: 'lib/images/sides/ice2.png',
        price: 1500,
        category: FoodCategory.IceCream,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),
    Food(
        name: "Strawberry mix Ice-Cream",
        description:
            "Frozen dessert typically made from milk or cream that has been flavoured with a sweetener",
        imagePath: 'lib/images/sides/ice3.png',
        price: 1500,
        category: FoodCategory.IceCream,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),
    Food(
        name: "Three Color Ice-Cream",
        description:
            "Frozen dessert typically made from milk or cream that has been flavoured with a sweetener",
        imagePath: 'lib/images/sides/ice4.png',
        price: 2000,
        category: FoodCategory.IceCream,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),
    Food(
        name: "Vanilla Ice-Cream",
        description:
            "Frozen dessert typically made from milk or cream that has been flavoured with a sweetener",
        imagePath: 'lib/images/sides/ice5.png',
        price: 1500,
        category: FoodCategory.IceCream,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),

    // desserts

    Food(
        name: "Sunset Cake",
        description:
            "a breadlike food made from a dough or batter that is usually fried or baked in small flat shapes and is often unleavened.",
        imagePath: 'lib/images/desserts/dessert1.png',
        price: 2500,
        category: FoodCategory.Desserts,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),
    Food(
        name: "Cheese Cake",
        description:
            "a breadlike food made from a dough or batter that is usually fried or baked in small flat shapes and is often unleavened.",
        imagePath: 'lib/images/desserts/dessert2.png',
        price: 3000,
        category: FoodCategory.Desserts,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),
    Food(
        name: "Delightful Fruit Tarts",
        description:
            "a breadlike food made from a dough or batter that is usually fried or baked in small flat shapes and is often unleavened.",
        imagePath: 'lib/images/desserts/dessert3.png',
        price: 3500,
        category: FoodCategory.Desserts,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),
    Food(
        name: "Colorful Cake",
        description:
            "a breadlike food made from a dough or batter that is usually fried or baked in small flat shapes and is often unleavened.",
        imagePath: 'lib/images/desserts/dessert4.png',
        price: 5000,
        category: FoodCategory.Desserts,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),
    Food(
        name: "Chocolate Cheese Cake",
        description:
            "a breadlike food made from a dough or batter that is usually fried or baked in small flat shapes and is often unleavened.",
        imagePath: 'lib/images/desserts/dessert5.png',
        price: 3000,
        category: FoodCategory.Desserts,
        availableAddons: [Addon(name: "Extra Topping", price: 200)]),

    //drinks

    Food(
        name: "Bubble MilkTea",
        description:
            "A drink made from cold tea mixed with milk, flavourings, etc., which also contains small sweet balls that look like bubbles and are made from tapioca.",
        imagePath: 'lib/images/drinks/drink1.png',
        price: 2500,
        category: FoodCategory.Drinks,
        availableAddons: [Addon(name: "Extra bubble", price: 200)]),
    Food(
        name: "Matcha Tea",
        description:
            "Mellow vegetal grassy notes, natural sweet nuttiness, a touch of bitterness with a pleasant savory ending.",
        imagePath: 'lib/images/drinks/drink2.png',
        price: 3000,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: "Extra milk", price: 200),
          Addon(name: "Extra matcha", price: 200)
        ]),
    Food(
        name: "Chocolate MilkShake",
        description:
            "It is usually prepared by milk, ice cream or iced milk, emulsifier and/or stabilizer, and flavorings or sweeteners.",
        imagePath: 'lib/images/drinks/drink3.png',
        price: 2500,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: "Extra chocolate", price: 200),
          Addon(name: "Extra topping", price: 200)
        ]),
    Food(
        name: "Orange Juice",
        description:
            "A liquid extract of the orange tree fruit, produced by squeezing or reaming oranges.",
        imagePath: 'lib/images/drinks/drink4.png',
        price: 2500,
        category: FoodCategory.Drinks,
        availableAddons: [Addon(name: "Extra topping", price: 200)]),
    Food(
        name: "Fruit Juice",
        description:
            "Fruit juice is 100% pure juice made from the flesh of fresh fruit or from whole fruit.",
        imagePath: 'lib/images/drinks/drink5.png',
        price: 2500,
        category: FoodCategory.Drinks,
        availableAddons: [Addon(name: "Extra topping", price: 200)]),
  ];

  // user cart
  final List<CartItem> _cart = [];

  //delivery address (which user can change/update)

  String _deliveryAddress = '101 x 73 Mandalay';

  /*
    G E T T E R
    */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;
  double get allTotalPrice => getTotalPrice() + 2000;

  /*

  O P E R A T I O N S


  */

//update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //
      bool isSameFood = item.food == food;

      //
      bool isSameAddons =
          ListEquality().equals(item.selectedAddon, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists. increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddon: selectedAddons));
    }
    addNotification();
    notifyListeners();
  }

  // remove from cart
  void removeFrontCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartItem != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    removeNotification();
    notifyListeners();
  }

  // get total price
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    _notificationCount = 0;
    notifyListeners();
  }

  //noti

  int _notificationCount = 0;

  int get notificationCount => _notificationCount;

  void addNotification() {
    _notificationCount++;
    notifyListeners();
  }

  void removeNotification() {
    _notificationCount--;
    notifyListeners();
  }

  /*

    H E L P E R S

  */

  //format double value into money
  String _formatPrice(double price) {
    return price.toString() + "MMK";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }

// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();
    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyy-MM-dd HH:mm:a').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("--------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddon.isNotEmpty) {
        receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddon)}");
      }
      receipt.writeln();
    }
    receipt.writeln("--------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Sub Total: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivery fees: 2000 MMK");
    receipt.writeln("Total: ${_formatPrice(allTotalPrice)}");
    receipt.writeln();
    receipt.writeln("Delivering to: " + deliveryAddress);
    return receipt.toString();
  }
}
