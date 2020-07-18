import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NotificacionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NotificacionModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notificaciones'),
        ),
        bottomNavigationBar: BottomBar(),
        floatingActionButton: FloatingButton(),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        int numero = Provider.of<_NotificacionModel>(context, listen: false).getNumero;
        numero++;
        Provider.of<_NotificacionModel>(context, listen: false).setNumero = numero;
      },
      backgroundColor: Colors.red,
      child: FaIcon(FontAwesomeIcons.playCircle),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int numero = Provider.of<_NotificacionModel>(context).getNumero;
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
                  child: Text('$numero', style: TextStyle(color: Colors.white, fontSize: 11.0),),
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

class _NotificacionModel extends ChangeNotifier{
  int _numero = 0;

  get getNumero => _numero;

  set setNumero (int nro){
    _numero = nro;
    notifyListeners();
  }
}