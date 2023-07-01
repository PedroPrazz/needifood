import 'package:flutter/material.dart';

class DetalhesFood extends StatefulWidget {
  var dados;
  DetalhesFood({super.key, required this.dados});

  @override
  State<DetalhesFood> createState() => _DetalhesFoodState();
}

class _DetalhesFoodState extends State<DetalhesFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
             Text(
              widget.dados['name']
             )
            ],
          )
        ],
      )
    );
  }
}