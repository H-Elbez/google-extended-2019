import 'package:first_web_project/slides/11_slide.dart';
import 'package:first_web_project/slides/13_slide.dart';
import 'package:first_web_project/slides/14_slide.dart';
import 'package:first_web_project/slides/15_slide.dart';
import 'package:first_web_project/slides/16_slide.dart';
import 'package:first_web_project/slides/17_slide.dart';
import 'package:flutter_web/material.dart';
import 'package:first_web_project/slides/10_slide.dart';
import 'package:first_web_project/slides/12_slide.dart';
import 'package:first_web_project/slides/1_slide.dart';
import 'package:first_web_project/slides/2_slide.dart';
import 'package:first_web_project/slides/3_slide.dart';
import 'package:first_web_project/slides/4_slide.dart';
import 'package:first_web_project/slides/5_slide.dart';
import 'package:first_web_project/slides/6_slide.dart';
import 'package:first_web_project/slides/7_slide.dart';
import 'package:first_web_project/slides/8_slide.dart';
import 'package:first_web_project/slides/9_slide.dart';

final List<Widget> list = <Widget>[
      SlideOne(),
      SlideTwo(),
      SlideThree(),
      SlideFour(),
      SlideFive(),
      SlideSix(),
      SlideSeven(),
      SlideEigth(),
      SlideNine(),
      SlideTen(),
      SlideEleven(),
      SlideTwelve(),
      SlideThirteen(),
      SlideFourteen(),
      SlideFifteen(),
      SlideSixteen(),
      SlideSeventeen()
    ];

class ModelImage extends StatelessWidget {
  const ModelImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(child: Image.asset('logos/model.png', fit: BoxFit.fill));
  }
}

class GoogleIOLogo extends StatefulWidget {
  const GoogleIOLogo({
    Key key,
  }) : super(key: key);

  @override
  _GoogleIOLogoState createState() => _GoogleIOLogoState();
}

class _GoogleIOLogoState extends State<GoogleIOLogo> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500)
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn
    );

    _animation.addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 20,
      child: Container(
        height: 250,
        width: 250,
        child: Align(
          alignment: Alignment.bottomRight,
          child: FadeTransition(
            opacity: _animation,
            child: Image.asset('logos/iologo.png')),
        ),
      ),
    );
  }
}
