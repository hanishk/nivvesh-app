import 'package:flutter/material.dart';
import 'package:nivvesh/home_page/screens/bottom_nav.dart';

abstract class RouteGenerator {
  static const String homeScreen = "/homeScreen";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        throw const RouteException("Route not found");
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
