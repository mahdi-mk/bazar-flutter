import 'package:flutter/material.dart';
import 'package:flutter_app/src/features/products/domain/category.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    required this.onPressed,
  });

  final Category category;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.laptop,
        color: ThemeColors.primaryText,
      ),
      iconSize: 30,
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(17),
        backgroundColor: ThemeColors.secondary.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
