import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificacionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingButton(),
    );
  }
}

class FloatingButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){},
      backgroundColor: Colors.red,
      child: FaIcon(FontAwesomeIcons.playCircle),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          title: Text('bone'),
          icon: FaIcon(FontAwesomeIcons.bone)
        ),
        BottomNavigationBarItem(
          title: Text('notificaciones'),
          icon: Stack(
            children: [
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                top: 0.0, right: 0.0,
                child: Container(
                  width: 12.0, height: 12.0,
                  child: Text('1', style: TextStyle(color: Colors.white, fontSize: 11.0),),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                ),
              )
            ],
          )
          
        ),
        BottomNavigationBarItem(
          title: Text('my dog'),
          icon: FaIcon(FontAwesomeIcons.dog)
        ),
      ],
    );
  }
}