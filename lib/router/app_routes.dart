import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static final menuOptions = <MenuOption>[
    MenuOption("Home", "/", Icons.home, const HomeScreen()),
    MenuOption("Alert", "/alert-screen", Icons.add_alert, const AlertScreen()),
    MenuOption("Card", "/card-screen", Icons.credit_card, const CardScreen()),
    MenuOption(
        "Listview", "/listview-screen", Icons.list, const ListViewScreen()),
  ];

  static const initialRoute = "/";

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}
