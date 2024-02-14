import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_app/src/theme/widgets/buttons/secondary_action_button.dart';
import 'package:flutter_app/src/theme/widgets/form/secondary_text_input.dart';
import 'package:flutter_app/src/theme/widgets/logo.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: AppBar(
        title: Logo(
          textColor: ThemeColors.primaryText,
          size: 30,
        ),
        centerTitle: true,
        leading: const Align(
          child: SecondaryActionButton(
            icon: Icons.notifications_outlined,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: SecondaryActionButton(
              icon: Icons.shopping_bag_outlined,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 10),
            child: SecondaryTextInput(
              hint: 'Search',
              preifxIcon: const Icon(Icons.search),
              prefixIconColor: ThemeColors.secondaryText,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
            ),
          ),
        ),
      ),
    );
  }
}
