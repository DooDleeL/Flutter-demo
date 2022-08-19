import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:primeiro_app/app/screen/home_screen.dart';
import 'package:primeiro_app/app/screen/form.dart';

Widget Menu(BuildContext context) {
  return
    Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic)),
          ),
          ListTile(
            title: const Text('Home Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen(title: "Home")),
              );
            },
          ),
          ListTile(
            title: const Text('Formulário'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FormScreen(title: "Formulário")),
              );
            },
          ),
        ],
      ),
    );
}