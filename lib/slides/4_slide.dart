import 'package:first_web_project/home_screen.dart';
import 'package:flutter_web/material.dart';

class SlideFour extends StatelessWidget {
  const SlideFour({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width / 400;
    return SlidesModel(
      widget: Positioned(
        top: size * 31.3,
        right: 0,
        left: 0,
        bottom: size * 31.3,
        child: Image.asset('logos/materialdark.png', fit: BoxFit.contain),
      ),
    );
  }
}
