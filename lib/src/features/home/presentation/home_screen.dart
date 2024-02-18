import 'package:flutter/material.dart';
import 'package:flutter_app/src/common/category_card.dart';
import 'package:flutter_app/src/common/product_card.dart';
import 'package:flutter_app/src/common/section.dart';
import 'package:flutter_app/src/features/home/presentation/home_screen_app_bar.dart';
import 'package:flutter_app/src/features/products/domain/category.dart';
import 'package:flutter_app/src/mock/products.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const double appBarHeight = 120;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: HomeScreenAppBar(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height + appBarHeight,
          child: Column(
            children: [
              gapH24,
              Section(
                type: SectionType.categories,
                heading: 'Shop by Category',
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 14 : 5,
                    ),
                    child: const CategoryCard(
                      category: Category(id: 'id', name: 'Men'),
                    ),
                  );
                },
              ),
              gapH24,
              Section(
                type: SectionType.brands,
                heading: 'Shop by Brand',
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 14 : 5,
                    ),
                    child: const CategoryCard(
                      category: Category(id: 'id', name: 'Men'),
                    ),
                  );
                },
              ),
              gapH24,
              Section(
                type: SectionType.products,
                heading: 'New Arrival',
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 14 : 5,
                    ),
                    child: ProductCard(product: fakeProducts[index]),
                  );
                },
              ),
              gapH24,
              Section(
                type: SectionType.products,
                heading: 'Popular',
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 14 : 5,
                    ),
                    child: ProductCard(product: fakeProducts[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
