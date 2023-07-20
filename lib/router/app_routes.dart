import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static final menuOptions = <MenuOption>[
    MenuOption(
      "Home",
      "/",
      Icons.home,
      const HomeScreen(),
    ),
    MenuOption(
      "Animated container",
      "/animated-screen",
      Icons.play_circle,
      const AnimatedScreen(),
    ),
    MenuOption(
      "Alert",
      "/alert-screen",
      Icons.add_alert,
      const AlertScreen(),
    ),
    MenuOption(
      "Avatar",
      "/avatar-screen",
      Icons.supervised_user_circle,
      const AvatarScreen(),
    ),
    MenuOption(
      "Card",
      "/card-screen",
      Icons.credit_card,
      const CardScreen(),
    ),
    MenuOption(
      "Inputs",
      "/inputs-screen",
      Icons.edit,
      const InputScreen(),
    ),
    MenuOption(
      "Listview",
      "/listview-screen",
      Icons.list,
      const ListViewScreen(),
    ),
    MenuOption(
      "Slider",
      "/slider-screen",
      Icons.slow_motion_video,
      const SliderScreen(),
    ),
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
