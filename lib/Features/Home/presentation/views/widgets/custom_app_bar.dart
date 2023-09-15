import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.gen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 24.0, right: 24, top: 40, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.images.logo.image(height: 24),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 26,
              ))
        ],
      ),
    );
  }
}
