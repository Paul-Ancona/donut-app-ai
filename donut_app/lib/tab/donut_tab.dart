import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';
import '../dummy_data.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

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
        itemCount: donutList.length,
        itemBuilder: (context, index) {
          return DonutTile(product: donutList[index]);
        },
      ),
    );
  }
}
