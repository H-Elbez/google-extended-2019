import 'package:first_web_project/home_screen.dart';
import 'package:flutter_web/material.dart';

class SlideFourteen extends StatefulWidget {
  const SlideFourteen({
    Key key,
  }) : super(key: key);

  @override
  _SlideFourteenState createState() => _SlideFourteenState();
}

class _SlideFourteenState extends State<SlideFourteen> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    _animation.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width / 400;
    return SlidesModel(
      widget: Positioned(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: size * 100,
              ),
              FadeTransition(
                opacity: _animation,
                child:
                    Text('1.5', style: TextStyle(fontSize: size * 16)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
