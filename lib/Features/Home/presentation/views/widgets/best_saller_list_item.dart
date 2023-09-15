import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/core/utils/assets.gen.dart';
import 'package:bookly/core/utils/fonts.gen.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSallerListItem extends StatelessWidget {
  const BestSallerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: Assets.images.testImage.provider(),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'The Jungle Book The Jungle Book The Jungle Book The Jungle Book  ',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: FontFamily.gTScertaFine,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'J.K Rowling',
                style: Styles.textStyle14
                    .copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    '19.99 € ',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  const BookRating()
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
