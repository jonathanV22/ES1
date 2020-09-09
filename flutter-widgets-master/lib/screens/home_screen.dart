import 'package:flutter/material.dart';
import 'package:widgets/models/data_model.dart';
import 'package:widgets/services/data_service.dart';
import 'package:widgets/utils/icono_string_util.dart';

class HomeScreen extends StatelessWidget {
  final DataService data = DataService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: data.cargarDatos(),
        builder: (context,AsyncSnapshot<Data> snapshot){
          if(snapshot.hasData){
            return ListView(
              children: _crearLista(snapshot.data, context),
            );
          }
          else{
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  List<Widget> _crearLista(Data data, BuildContext context) {
    final List<Widget> items = [];
    data.rutas.forEach((item) {
      final widgetTemp = ListTile(
        title: Text(item.texto),
        leading: getIcon(item.icon), //elemento al lado izquierdo del listile
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.pushNamed(context, item.ruta)
      );
      items.add(widgetTemp);
    });
    return items;

  }
}