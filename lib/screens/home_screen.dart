import 'package:ecommerce_app/services/api_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String message = "Loading.."; //Added
  final api = ApiService(); //Added

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
