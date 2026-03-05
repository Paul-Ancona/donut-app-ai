import 'package:flutter/material.dart';
import '../utils/my_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/smoothie_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../widgets/cart_floating_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.menu, size: 28),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: const Icon(Icons.person_outline),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(text: 'I want to '),
                          TextSpan(
                            text: 'Eat',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Centered TabBar
                  const TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.center, // This centers the tabs
                    indicatorColor:
                        Colors.transparent, // We don't want the default line
                    dividerColor: Colors.transparent, // Remove line under tabs
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    labelPadding: EdgeInsets.symmetric(horizontal: 8),
                    tabs: [
                      MyTab(iconPath: 'assets/images/chocolate_donut.png'),
                      MyTab(iconPath: 'assets/images/beefy_burger.png'),
                      MyTab(iconPath: 'assets/images/smoothie_strawberry.png'),
                      MyTab(iconPath: 'assets/images/pancake_banana.png'),
                      MyTab(iconPath: 'assets/images/pizza_pepperoni.png'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        DonutTab(),
                        BurgerTab(),
                        SmoothieTab(),
                        PancakeTab(),
                        PizzaTab(),
                      ],
                    ),
                  ),
                ],
              ),
              const CartFloatingBar(),
            ],
          ),
        ),
      ),
    );
  }
}
