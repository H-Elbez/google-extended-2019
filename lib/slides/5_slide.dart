import 'package:first_web_project/home_screen.dart';
import 'package:flutter_web/material.dart';

class SlideFive extends StatelessWidget {
  const SlideFive({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidesModel(
      widget: Positioned(
        child: Center(child: Image.asset('logos/dartlogo.png')),
      ),
    );
  }
}
