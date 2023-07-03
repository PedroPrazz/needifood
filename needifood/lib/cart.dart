import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho'),
      ),
      body: ListView.builder(
        itemCount: 3, // Número de itens no carrinho
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Item ${index + 1}'),
            subtitle: Text('Preço: \$9.99'), // Substitua pelo preço do item real
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total: \$29.97', // Substitua pelo total real do carrinho
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Ação do botão "Finalizar Compra"
              },
              child: Text('Finalizar Compra'),
            ),
          ],
        ),
      ),
    );
  }
}
