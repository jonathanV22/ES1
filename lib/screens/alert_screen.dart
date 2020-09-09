import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('abrir alerta'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('alerta'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('esto es una alerta'),
                    FlutterLogo(size: 100)
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop('cancelar');
                      },
                      child: Text('cancelar')),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop('ok');
                      },
                      child: Text('ok'))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
