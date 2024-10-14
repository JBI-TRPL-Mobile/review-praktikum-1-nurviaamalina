import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)?.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.judul),
      ),
      body: Center(
        child: Text(item.penulis),
      ),
    );
  }
}