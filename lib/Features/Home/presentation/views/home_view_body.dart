import 'package:bookly/Features/Home/presentation/views/widgets/FeaturedBooksList.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/best_saller_list_item.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/constans.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        AnimatedListView(),
        const Padding(
          padding: EdgeInsets.fromLTRB(KHPadding, 40, KHPadding, 20),
          child: Text('Best Saller', style: Styles.textStyle18),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: KHPadding),
          child: BestSallerListItem(),
        )
      ],
    );
  }
}
