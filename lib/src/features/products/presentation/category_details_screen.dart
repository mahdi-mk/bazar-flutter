import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/products/presentation/cards/product_card.dart';
import 'package:flutter_app/src/mock/products.dart';
import 'package:flutter_app/src/theme/widgets/buttons/secondary_action_button.dart';
import 'package:go_router/go_router.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Men',
        ),
        centerTitle: true,
        leading: Align(
          child: SecondaryActionButton(
            icon: Icons.arrow_back,
            onPressed: () => context.pop(),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        children: [
          for (int i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ProductCard(product: fakeProducts[i]),
            ),
        ],
      ),
    );
  }
}
