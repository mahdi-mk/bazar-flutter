import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/home/domain/section.dart';
import 'package:flutter_app/src/features/products/domain/category.dart';
import 'package:flutter_app/src/features/products/domain/product.dart';
import 'package:flutter_app/src/features/products/presentation/cards/category_card.dart';
import 'package:flutter_app/src/features/products/presentation/cards/product_card.dart';
import 'package:flutter_app/src/router/router.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_text_button.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.type,
    required this.heading,
    required this.data,
  });

  final SectionType type;
  final String heading;
  final List<Object> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: type == SectionType.products ? 300 : 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  heading,
                  style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ThemeColors.primaryText,
                  ),
                ),
                PrimaryTextButton(text: 'View all', onPressed: () {})
              ],
            ),
          ),
          gapH12,
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];

                if (type == SectionType.brands) {
                  return const Text("brands");
                }

                if (type == SectionType.categories && item is Category) {
                  return Padding(
                    padding: index == 0
                        ? const EdgeInsets.only(left: 14)
                        : const EdgeInsets.symmetric(horizontal: 4),
                    child: CategoryCard(
                      category: item,
                      onPressed: () => context.pushNamed(
                        AppRoute.categoryDetails.name,
                        pathParameters: {
                          "id": item.id,
                        },
                      ),
                    ),
                  );
                }

                if (type == SectionType.products && item is Product) {
                  return Padding(
                    padding: index == 0
                        ? const EdgeInsets.only(left: 14)
                        : const EdgeInsets.symmetric(horizontal: 4),
                    child: ProductCard(
                      product: item,
                      onPressed: () => context.pushNamed(
                        AppRoute.productDetails.name,
                        pathParameters: {
                          "id": item.id,
                        },
                      ),
                    ),
                  );
                }

                return Container();
              },
            ),
          )
        ],
      ),
    );
  }
}
