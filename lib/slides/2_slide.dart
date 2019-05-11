import 'package:first_web_project/home_screen.dart';
import 'package:first_web_project/utils.dart';
import 'package:flutter_web/material.dart';

class SlideTwo extends StatelessWidget {
  const SlideTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width / 400;
    final List<Widget> list = <Widget>[
      Positioned(
        left: size * 20,
        top: size * 50,
        bottom: size * 50,
        child: FlutterLogo(
          size: size * 130,
        ),
      ),
      Positioned(
        left: size * 10,
        right: size * 10,
        top: size * 100,
        bottom: size * 100,
        child: Image.asset('logos/heart.png'),
      ),
      Positioned(
        right: size * 10,
        top: size * 60,
        bottom: size * 60,
        child: Image.asset('logos/mdlogo.png'),
      ),
    ];

    return SlidesModel(
      widget: Stack(
        children: <Widget>[
          ModelImage(),
          ...list,
          GoogleIOLogo()
        ],
      ),
    );
  }
}
