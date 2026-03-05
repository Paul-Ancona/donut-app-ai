import 'package:flutter/material.dart';
import '../utils/pancake_tile.dart';
import '../dummy_data.dart';

class PancakeTab extends StatelessWidget {
  const PancakeTab({super.key});

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
        itemCount: pancakeList.length,
        itemBuilder: (context, index) {
          return PancakeTile(product: pancakeList[index]);
        },
      ),
    );
  }
}
