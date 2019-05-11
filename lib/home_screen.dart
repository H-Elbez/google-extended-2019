import 'package:first_web_project/utils.dart';
import 'package:flutter_web/material.dart';

class SlidesModel extends StatelessWidget {
  const SlidesModel({Key key, this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ModelImage(),
          widget,
          GoogleIOLogo(),
        ],
      ),
    );
  }
}
