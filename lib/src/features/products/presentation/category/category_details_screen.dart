import 'package:flutter/material.dart';
import 'package:flutter_app/src/common/async_value_widget.dart';
import 'package:flutter_app/src/features/products/data/category/providers.dart';
import 'package:flutter_app/src/features/products/presentation/cards/product_card.dart';
import 'package:flutter_app/src/theme/widgets/buttons/secondary_action_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CategoryDetailsScreen extends ConsumerWidget {
  const CategoryDetailsScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryAsync = ref.watch(categoryDataProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: categoryAsync.maybeWhen(
          data: (data) => Text(data.name),
          orElse: () => const Text(''),
        ),
        centerTitle: true,
        leading: Align(
          child: SecondaryActionButton(
            icon: Icons.arrow_back,
            onPressed: () => context.pop(),
          ),
        ),
      ),
      body: AsyncValueWidget(
        value: categoryAsync,
        data: (data) => GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          children: [
            for (int i = 0; i < data.products.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ProductCard(product: data.products[i]),
              ),
          ],
        ),
      ),
    );
  }
}
