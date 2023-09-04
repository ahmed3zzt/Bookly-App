import 'package:bookly/core/utils/assets.gen.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: Assets.images.testImage.provider(),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
