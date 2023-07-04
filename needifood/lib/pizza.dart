import 'package:flutter/material.dart';
import 'package:needifood/ListFood.dart';
import 'package:needifood/detalhesfood.dart';

class ListPizzas extends StatefulWidget {
  const ListPizzas({super.key});

  @override
  State<ListPizzas> createState() => _ListPizzasState();
}

class _ListPizzasState extends State<ListPizzas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizzas'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
        itemCount: Pizz[0]['Pizzas'].length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesFood(dados: Pizz[0]['Pizzas'][index])));
            },
            leading: Image.network(Pizz[0]['Pizzas'][index]['image']),
            title: Text(Pizz[0]['Pizzas'][index]['name']),
            subtitle: Text(Pizz[0]['Pizzas'][index]['description']),
            trailing: Text(Pizz[0]['Pizzas'][index]['price'].toString()),
          );
        }),
      ),
    );
  }
}

