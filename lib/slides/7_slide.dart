import 'package:first_web_project/home_screen.dart';
import 'package:flutter_web/material.dart';

class SlideSeven extends StatelessWidget {
  const SlideSeven({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidesModel(
      widget: Positioned(
        child: Center(child: Image.asset('logos/spread1.png', scale: 0.7)),
      ),
    );
  }
}
