import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

import '../providers/dark_theme_provider.dart';
import 'text_widget.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Drawer(
      backgroundColor: Color.fromARGB(255, 146, 222, 210),
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/groceries.png"),
          ),
          DrawerListTile(
            title: "Main",
            press: () {},
            icon: Icons.home_filled,
          ),
          DrawerListTile(
            title: "View all product",
            press: () {},
            icon: Icons.store,
          ),
          DrawerListTile(
            title: "View all order",
            press: () {},
            icon: IconlyBold.bag_2,
          ),
          SwitchListTile(
            title: const Text('Theme'),
            secondary: Icon(themeState.getDarkTheme
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            value: true,
            onChanged: (value) {
              setState(() {
                themeState.setDarkTheme = value;
              });
            },
          )
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.press,
    required this.icon,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        horizontalTitleGap: 0.0,
        leading: Icon(
          icon,
          size: 18,
        ),
        title: TextWidget(
          text: title,
          color: Colors.amber,
        ));
  }
}
