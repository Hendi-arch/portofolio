import 'package:flutter/material.dart';

class CardFolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Align(
        alignment: Alignment.bottomCenter,
        child: Card(child: Container(width: _size.width * 0.7, height: _size.height * 0.6)));
  }
}
