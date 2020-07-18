import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterPage extends StatefulWidget {

  @override
  _TwitterPageState createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {
  bool animacion = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ZoomOut(
          animate: animacion,
          duration: Duration(seconds: 1),
          from: 50,
          child: FaIcon(FontAwesomeIcons.twitter, color: Colors.white,)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        child: FaIcon(FontAwesomeIcons.play,),
        onPressed: (){
          setState(() {
            animacion = true;  
          });
        }
      ),
    );
  }
}