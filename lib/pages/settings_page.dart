import 'package:delivery/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isClicked = ThemeProvider().isClicked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          //dark mode
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.only(left: 25, top: 10, right: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  isClicked ? "Dark Mode" : "Light Mode",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme(isClicked);
                    },
                    icon: Icon(
                      isClicked ? Icons.dark_mode : Icons.light_mode,
                      size: 30,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
