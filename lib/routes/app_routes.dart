import 'package:fl_componentes/models/menu_option.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home', 
      icon: Icons.house_rounded, 
      name: 'Home Screen', 
      screen: const HomeScreen()),
    MenuOption(
      route: 'listview1', 
      icon: Icons.list_alt, 
      name: 'Listview tipo 1', 
      screen: const Listview1Screen()),
    MenuOption(
      route: 'listview2', 
      icon: Icons.list, 
      name: 'Listview tipo 2', 
      screen: const Listview2Screen()),
    MenuOption(
      route: 'alert', 
      icon: Icons.add_alert_outlined, 
      name: 'Alertas', 
      screen: const AlertScreen()),
    MenuOption(
      route: 'card', 
      icon: Icons.card_giftcard, 
      name: 'Cards (Tarjetas)', 
      screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for ( final option in MenuOptions ) {
      appRoutes.addAll({option.route : ( BuildContext context ) => option.screen});
    }

    return appRoutes;

  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }
}
