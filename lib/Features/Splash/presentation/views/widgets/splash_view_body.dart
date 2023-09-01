import 'dart:async';

import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.gen.dart';

class SplashViewBody extends StatefulWidget {
  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animationController.forward();

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _visible = true;
      });
    });

    //  Timer(Duration(seconds: 4), () {
    //   // Navigate to the main screen after splash screen
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => MainScreen()),
    //   );
    // });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _visible ? 250.0 : 0.0,
            height: _visible ? 250.0 : 0.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.logo.provider(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
