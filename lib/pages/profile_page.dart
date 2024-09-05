import 'package:delivery/components/my_textfield.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(shadows: [
            Shadow(
              blurRadius: 10.0,
              color: Colors.grey,
              offset: Offset(5.0, 5.0),
            ),
          ], fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Personal details",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfield(
                controller: nameController,
                hintText: "Myat Min Thu",
                obscureText: false,
                icon: Icons.manage_accounts_outlined),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
                controller: emailController,
                hintText: "myat@gmail.com",
                obscureText: false,
                icon: Icons.email_outlined),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
                controller: phoneController,
                hintText: "09775241861",
                obscureText: false,
                icon: Icons.phone),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
