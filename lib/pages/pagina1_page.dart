import 'package:animate_do/animate_do.dart';
import 'package:animated_app/pages/twitter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated'),
        actions: [
          IconButton(icon: FaIcon(FontAwesomeIcons.twitter), onPressed: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context) => TwitterPage(),));
           }),
          IconButton(
            icon: Icon(Icons.navigate_next) ,
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context) => Pagina1Page(),));
            }
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.new_releases, color: Colors.blue,),
            FadeInDown(
              delay: Duration(milliseconds: 300),
              child: Text('Titulo', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w200),)
            ),
            FadeInDown(
              delay: Duration(milliseconds: 900),
              child: Text('texto pequeño', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200),)
            ),
            FadeInRight(
              delay: Duration(milliseconds: 1200),
              child: Container(height: 2.0, width: 200.0, color: Colors.blue,)
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_filled),
        onPressed: (){}
      ),
    );
  }
}