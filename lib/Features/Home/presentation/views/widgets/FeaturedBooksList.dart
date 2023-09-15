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

class AnimatedListView extends StatefulWidget {
  @override
  _AnimatedListViewState createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.5, 0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Replace with your desired number of items
        itemBuilder: (context, index) {
          return SlideTransition(
            position: _animation,
            child: const Padding(
              padding: EdgeInsets.only(right: 8),
              child: ListViewItem(),
            ),
          );
        },
      ),
    );
  }
}
