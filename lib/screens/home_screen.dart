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

  //Added
  @override
  void initState() {
    super.initState();
    loadData();
  }

  //Added
  Future<void> loadData() async {
    try {
      final data = await api.getHello();
      setState(() => message = data);
    } catch (e) {
      setState(() => message = "Error: ${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Commerce App"),
      ),
      body: Center(
        child: Text(
          message,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
