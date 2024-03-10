import 'package:flutter/material.dart';

class AppBarCommon extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "BeachApp",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      backgroundColor: Color.fromARGB(255, 109, 154, 226),
      shadowColor: const Color.fromARGB(255, 24, 24, 17),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
