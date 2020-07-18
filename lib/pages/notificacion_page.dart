import 'package:animate_do/animate_do.dart';
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
    final modeloNot = Provider.of<_NotificacionModel>(context, listen: false);
    return FloatingActionButton(
      onPressed: (){
        int numero = modeloNot.getNumero;
        numero++;
        modeloNot.setNumero = numero;
        if(numero >=2){
          final controller = modeloNot._bonceController;
          controller.forward(from: 0.0);
        }
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
                child: BounceInDown(
                  from: 10,
                  animate: (numero>0) ? true: false,
                  child: Bounce(
                    from: 10,
                    controller: (controller) => Provider.of<_NotificacionModel>(context).setAnimationController = controller,
                    child: Container(
                      width: 14.0, height: 14.0,
                      child: Text('$numero', style: TextStyle(color: Colors.white, fontSize: 11.0),),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
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
  AnimationController _bonceController;

  get getNumero => this._numero;
  set setNumero (int nro){
    this._numero = nro;
    notifyListeners();
  }

  get getAnimationController => this._bonceController;
  set setAnimationController(AnimationController controller){
    this._bonceController = controller;
  }
}