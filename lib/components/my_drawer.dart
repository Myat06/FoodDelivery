import 'package:delivery/components/my_drawer_title.dart';
import 'package:delivery/pages/home_page.dart';
import 'package:delivery/pages/profile_page.dart';
import 'package:delivery/pages/settings_page.dart';
import 'package:delivery/pages/shop_page.dart';
import 'package:delivery/service/auth/auth_service.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.singOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      child: Column(
        children: [
          //App logo
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), // Border radius
                image: const DecorationImage(
                  image: AssetImage(
                      'lib/images/logo/logo.jpg'), // Your asset image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),

          //profile list title

          MyDrawerTitle(
            text: "P R O F I L E",
            icon: Icons.person,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
          //home list title
          const SizedBox(
            height: 15,
          ),
          MyDrawerTitle(
            text: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(
            height: 15,
          ),

          //Shop list title
          MyDrawerTitle(
            text: "S H O P",
            icon: Icons.shopping_basket_outlined,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShopPage()));
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(
            height: 15,
          ),
          //History list title

          MyDrawerTitle(
            text: "H I S T O R Y",
            icon: Icons.history,
            onTap: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(
            height: 15,
          ),
          //Settings list title

          MyDrawerTitle(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()));
            },
            color: Theme.of(context).colorScheme.secondary,
          ),

          const Spacer(),
          // logout list title
          MyDrawerTitle(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {
              logout();
            },
            color: Theme.of(context).colorScheme.secondary,
          ),

          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
