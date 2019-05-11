import 'package:first_web_project/home_screen.dart';
import 'package:first_web_project/utils.dart';
import 'package:flutter_web/material.dart';

class SlideSix extends StatelessWidget {
  const SlideSix({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width / 400;
    return SlidesModel(
      widget: Positioned(
        left: size * 10,
        top: size * 35,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Features 2.3', style: TextStyle(fontSize: size * 16)),
            SizedBox(height: size * 5),
            Text('- Spread (...)\n\n- Collection for\n\n- Collection if',
                style: TextStyle(fontSize: size * 10))
          ],
        ),
      ),
    );
  }
}
