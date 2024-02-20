import 'package:flutter/material.dart';
import 'package:flutter_app/src/common/async_value_widget.dart';
import 'package:flutter_app/src/features/products/data/product/providers.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:flutter_app/src/theme/settings/typography.dart';
import 'package:flutter_app/src/theme/widgets/buttons/primary_button.dart';
import 'package:flutter_app/src/theme/widgets/buttons/secondary_action_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

const double bottomBarHeight = 70;

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsync = ref.watch(productDataProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
        centerTitle: true,
        leading: Align(
          child: SecondaryActionButton(
            icon: Icons.arrow_back,
            onPressed: () => context.pop(),
          ),
        ),
      ),
      body: AsyncValueWidget(
        value: productAsync,
        data: (data) => Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                height: MediaQuery.of(context).size.height + bottomBarHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(data.imageUrl),
                      fit: BoxFit.cover,
                      height: 400,
                      width: 400,
                    ),
                    gapH12,
                    Text(
                      data.title,
                      style: title,
                    ),
                    gapH4,
                    Text(
                      '\$${data.price.toString()}',
                      style: GoogleFonts.sora(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.primaryText,
                      ),
                    ),
                    gapH12,
                    Text(
                      'Size',
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.primaryText,
                      ),
                    ),
                    gapH12,
                    Text(
                      'Color',
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.primaryText,
                      ),
                    ),
                    gapH12,
                    Text(
                      'Product Information',
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.primaryText,
                      ),
                    ),
                    gapH8,
                    Text(
                      "When not relying on code-generation, we need to tweak the syntax for defining our providers a bit to support passing arguments. This is done by relying on the. When not relying on code-generation, we need to tweak the syntax for defining our providers a bit to support passing arguments. This is done by relying on the",
                      style: body,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                color: Colors.white,
                height: 70,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    text: "Add to Cart",
                    onPressed: () {},
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
