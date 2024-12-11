import 'package:flutter/material.dart';
import 'package:lesson_practice/CounterWithSharedPref/counterProvider.dart';
import 'package:provider/provider.dart';

class counterPage extends StatefulWidget {
  const counterPage({super.key});

  @override
  State<counterPage> createState() => _counterPageState();
}

class _counterPageState extends State<counterPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Consumer<counterProvider>(
      builder: (context, value, child) {
        return Scaffold(
          body: Center(
            child: Text(
              "${value.counter}",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              value.increaseCounter();
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
