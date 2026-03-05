import 'package:flutter/material.dart';
import '../utils/pizza_tile.dart';
import '../dummy_data.dart';

class PizzaTab extends StatelessWidget {
  const PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.70,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: pizzaList.length,
        itemBuilder: (context, index) {
          return PizzaTile(product: pizzaList[index]);
        },
      ),
    );
  }
}
