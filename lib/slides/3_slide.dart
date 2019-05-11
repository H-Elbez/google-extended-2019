import 'package:first_web_project/home_screen.dart';
import 'package:flutter_web/material.dart';

class SlideThree extends StatelessWidget {
  const SlideThree({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width / 400;
    return SlidesModel(
      widget: Positioned(
        left: size * 10,
        top: size * 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Features', style: TextStyle(fontSize: size * 16)),
            SizedBox(height: size * 10),
            Text(
              '- Dark Theme\n\n- Tutorial about Dark Theme\n\n- Tutorial about Dark Theme in Android',
              style: TextStyle(fontSize: size * 10),
            )
          ],
        ),
      ),
    );
  }
}
