import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/products/domain/product.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_app/src/theme/settings/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.onPressed,
  });

  final Product product;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 300,
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(product.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
            gapH8,
            Flexible(
              child: Text(
                product.title,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.sora(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: ThemeColors.primaryText,
                ),
              ),
            ),
            Text(
              '${product.price.toString()} USD',
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: ThemeColors.primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
