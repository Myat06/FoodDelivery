class Food {
  final String name; //cheese burger
  final String description; //a burger full of cheese
  final String imagePath; //lib/images/cheese_burger.png
  final double price; // 5,000 kyats
  final FoodCategory category; // burger
  List<Addon> availableAddons; //[extra cheese , sauce , extra patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

// food categories

enum FoodCategory { Burgers, Salads, IceCream, Desserts, Drinks }

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
