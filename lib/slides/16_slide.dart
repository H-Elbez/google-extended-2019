import 'package:first_web_project/home_screen.dart';
import 'package:flutter_web/material.dart';

class SlideSixteen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidesModel(
      widget: Positioned(
        child: Center(
          child: Image.asset('logos/browserengine.png'),
        ),
      ),
    );
  }
}