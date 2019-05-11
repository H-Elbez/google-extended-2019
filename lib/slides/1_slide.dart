import 'package:first_web_project/home_screen.dart';
import 'package:flutter_web/material.dart';

class SlideOne extends StatelessWidget {
  const SlideOne({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidesModel(
      widget: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('logos/cover.png', fit: BoxFit.cover),
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              height: 250,
              width: 250,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset('logos/iologo.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}