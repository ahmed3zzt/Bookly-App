import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '4.5',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2999)',
          style: Styles.textStyle16.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
