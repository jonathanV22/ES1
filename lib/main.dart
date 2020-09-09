import 'package:flutter/material.dart';
import 'package:widgets/screens/alert_screen.dart';
import 'package:widgets/screens/home_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Flutter',
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/': (BuildContext context) => HomeScreen(),
        'alert': (BuildContext context) => AlertScreen()
      },
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => AlertScreen()
        );
      },
    );
  }
}