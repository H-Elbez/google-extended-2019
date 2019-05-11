import 'package:first_web_project/home_screen.dart';
import 'package:first_web_project/utils.dart';
import 'package:flutter_web/material.dart';

class SlideSeventeen extends StatelessWidget {
  const SlideSeventeen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width / 400;
    return SlidesModel(
      widget: Stack(
        children: <Widget>[
          ModelImage(),
          Positioned(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('flutter.dev', style: TextStyle(fontSize: size * 16)),
                  SizedBox(height: size * 7),
                  Text('flutter.dev/web', style: TextStyle(fontSize: size * 16))
                ],
              ),
            ),
          ),
          GoogleIOLogo()
        ],
      ),
    );
  }
}