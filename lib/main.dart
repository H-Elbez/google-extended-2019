import 'package:first_web_project/utils.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google I/O 2019',
      theme: ThemeData(fontFamily: 'Google Sans'),
      home: SlidePages(),
    );
  }
}

class SlidePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: ScrollPhysics(
          parent: ClampingScrollPhysics()
        ),
        children: list,
      ),
    );
  }
}
