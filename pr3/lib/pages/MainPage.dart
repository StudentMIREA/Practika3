import 'package:flutter/material.dart';
import 'package:pr3/pages/components/Items.dart';
import 'package:pr3/pages/components/ItemsList.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        title: const Text('Товары'),
        backgroundColor: Colors.white70,
      ),
      body: ListView.builder(
          itemCount: ItemsList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListOfItems(item: ItemsList[index]);
          }),
    );
  }
}
