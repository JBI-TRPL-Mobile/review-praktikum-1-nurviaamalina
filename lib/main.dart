import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart';
import 'package:template_project/pages/home_page.dart';
import 'package:template_project/pages/item_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      initialRoute: '/',
      routes: {
        '/':(context) =>  HomePage(),
        '/item': (context) =>  ItemPage(),
      },
    
    onUnknownRoute : (RouteSettings){
      return MaterialPageRoute(builder: (context) => HomePage());
    },
    );
}
}
