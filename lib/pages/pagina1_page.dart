import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated'),
        actions: [
          IconButton(icon: FaIcon(FontAwesomeIcons.twitter), onPressed: () {  }),
          IconButton(icon: Icon(Icons.navigate_next) ,onPressed: (){},)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.new_releases, color: Colors.blue,),
            Text('Titulo', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w200),),
            Text('texto pequeño', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200),),
            Container(height: 2.0, width: 200.0, color: Colors.blue,)
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