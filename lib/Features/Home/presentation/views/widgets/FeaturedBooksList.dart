// ignore_for_file: file_names

import 'package:bookly/Features/Home/presentation/views/widgets/list_view_item.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: KHPadding),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 8),
              child: ListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
