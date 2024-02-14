import 'package:flutter/material.dart';
import 'package:flutter_app/src/common/product_card.dart';
import 'package:flutter_app/src/common/section.dart';
import 'package:flutter_app/src/features/home/presentation/home_screen_app_bar.dart';
import 'package:flutter_app/src/features/home/presentation/sections/shop_by_brand_section.dart';
import 'package:flutter_app/src/features/home/presentation/sections/shop_by_category_section.dart';
import 'package:flutter_app/src/mock/products.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const double appBarHeight = 115;

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
        child: Container(
          padding: const EdgeInsets.all(14),
          height: MediaQuery.of(context).size.height + appBarHeight,
          child: Column(
            children: [
              const ShopByCategorySection(),
              gapH24,
              const ShopByBrandSection(),
              gapH12,
              Section(
                heading: 'New Arrival',
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: ProductCard(product: fakeProducts[index]),
                  );
                },
              ),
              gapH12,
              Section(
                heading: 'Popular',
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 7),
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
