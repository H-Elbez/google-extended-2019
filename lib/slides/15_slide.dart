import 'package:first_web_project/home_screen.dart';
import 'package:first_web_project/utils.dart';
import 'package:flutter_web/material.dart';

class SlideFifteen extends StatelessWidget {
  const SlideFifteen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidesModel(
      widget: Stack(
        children: <Widget>[
          ModelImage(),
          Positioned(
            child: Center(
              child: Image.asset('/logos/hummingbird.png'),
            ),
          ),
          GoogleIOLogo(),
        ],
      ),
    );
  }
}