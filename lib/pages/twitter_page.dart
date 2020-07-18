import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ZoomOut(
          animate: false,
          duration: Duration(seconds: 1),
          from: 50,
          child: FaIcon(FontAwesomeIcons.twitter, color: Colors.white,)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        child: FaIcon(FontAwesomeIcons.play,),
        onPressed: (){}
      ),
    );
  }
}