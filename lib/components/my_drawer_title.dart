import 'package:flutter/material.dart';

class MyDrawerTitle extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;
  final Color color;

  const MyDrawerTitle({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Theme.of(context).colorScheme.tertiary),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: ListTile(
          title: Text(
            text,
            style: const TextStyle(shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.grey,
                offset: Offset(5.0, 5.0),
              ),
            ], color: Colors.white),
          ),
          leading: Icon(icon, color: Colors.white),
          onTap: onTap,
        ),
      ),
    );
  }
}
