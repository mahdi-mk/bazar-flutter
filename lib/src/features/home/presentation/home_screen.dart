import 'package:flutter/material.dart';
import 'package:flutter_app/src/common/async_value_widget.dart';
import 'package:flutter_app/src/features/products/presentation/section_widget.dart';
import 'package:flutter_app/src/features/home/data/providers.dart';
import 'package:flutter_app/src/features/home/presentation/home_screen_app_bar.dart';
import 'package:flutter_app/src/theme/settings/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const double appBarHeight = 120;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeDataAsync = ref.watch(homeDataProvider);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: HomeScreenAppBar(),
      ),
      body: RefreshIndicator(
        color: ThemeColors.primary,
        onRefresh: () => ref.refresh(homeDataProvider.future),
        child: AsyncValueWidget(
            value: homeDataAsync,
            data: (data) => ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    final section = data[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: SectionWidget(
                        type: section.type,
                        heading: section.heading,
                        data: section.data,
                      ),
                    );
                  },
                )

            // SingleChildScrollView(
            //   child: SizedBox(
            //     height: MediaQuery.of(context).size.height + appBarHeight,
            //     child: Column(
            //       children: [
            //         gapH24,
            //         // Shop by Category Section
            //         Section(
            //           type: SectionType.categories,
            //           heading: 'Shop by Category',
            //           itemCount: 10,
            //           itemBuilder: (BuildContext context, int index) {
            //             return Padding(
            //               padding: EdgeInsets.only(
            //                 left: index == 0 ? 14 : 5,
            //               ),
            //               child: CategoryCard(
            //                 category: const Category(id: 'id', name: 'Men'),
            //                 onPressed: () => context.pushNamed(
            //                   AppRoute.categoryDetails.name,
            //                 ),
            //               ),
            //             );
            //           },
            //         ),
            //         gapH24,
            //         Section(
            //           type: SectionType.brands,
            //           heading: 'Shop by Brand',
            //           itemCount: 10,
            //           itemBuilder: (BuildContext context, int index) {
            //             return Padding(
            //               padding: EdgeInsets.only(
            //                 left: index == 0 ? 14 : 5,
            //               ),
            //               child: CategoryCard(
            //                 category: const Category(id: 'id', name: 'Men'),
            //                 onPressed: () => context.goNamed(
            //                   AppRoute.categoryDetails.name,
            //                 ),
            //               ),
            //             );
            //           },
            //         ),
            //         gapH24,
            //         Section(
            //           type: SectionType.products,
            //           heading: 'New Arrival',
            //           itemCount: 10,
            //           itemBuilder: (BuildContext context, int index) {
            //             return Padding(
            //               padding: EdgeInsets.only(
            //                 left: index == 0 ? 14 : 5,
            //               ),
            //               child: ProductCard(product: fakeProducts[index]),
            //             );
            //           },
            //         ),
            //         gapH24,
            //         Section(
            //           type: SectionType.products,
            //           heading: 'Popular',
            //           itemCount: 10,
            //           itemBuilder: (BuildContext context, int index) {
            //             return Padding(
            //               padding: EdgeInsets.only(
            //                 left: index == 0 ? 14 : 5,
            //               ),
            //               child: ProductCard(product: fakeProducts[index]),
            //             );
            //           },
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            ),
      ),
    );
  }
}
