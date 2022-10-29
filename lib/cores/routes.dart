import 'package:flutter/material.dart';
import 'package:multi_bloc_listener/features/screens/contact/contact_screen.dart';
import 'package:multi_bloc_listener/features/screens/home/home_screen.dart';
import 'package:multi_bloc_listener/features/screens/info/info_screen.dart';
import 'package:multi_bloc_listener/features/screens/notfound/notfound_screen.dart';
import 'package:multi_bloc_listener/features/screens/setting/setting_screen.dart';

class MyRoutes {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case '/info':
        return MaterialPageRoute(builder: (context) => const InforScreen());
      case '/setting':
        return MaterialPageRoute(builder: (context) => const SettingScreen());
      case '/contact':
        return MaterialPageRoute(builder: (context) => const ContactScreen());
      default:
        return MaterialPageRoute(builder: (context) => const NotFound());
    }
  }
}
