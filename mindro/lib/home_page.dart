import 'package:flutter/material.dart';
import 'package:mindro/components/motivation_quotes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mindro: A madicating app"),
        elevation: 20,
      ),
      body: Column(
        children: [
          MotivationQuotes()
        ],
      ),

    );
  }
}
