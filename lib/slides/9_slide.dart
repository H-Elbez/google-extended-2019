import 'package:first_web_project/home_screen.dart';
import 'package:flutter_web/material.dart';

class SlideNine extends StatelessWidget {
  const SlideNine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidesModel(
      widget: Positioned(
        child: Center(
          child: Image.asset('logos/spread3.png', scale: 0.7),
        ),
      ),
    );
  }
}
