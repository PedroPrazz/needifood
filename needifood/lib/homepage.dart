import 'package:flutter/material.dart';
import 'package:needifood/burgers.dart';
import 'package:needifood/cart.dart';
import 'package:needifood/detalhebanner.dart';
import 'package:needifood/drinks.dart';
import 'package:needifood/pizza.dart';
import 'favoritos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/burger1.png"),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: 500,
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Pesquisar alimento",
                  suffixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalheBanner()),
              );
            },
            child: Container(
              child: Image.asset('images/banner1.png'),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categorias',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListBurgers()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(5),
                  child: Image(
                    image: AssetImage("images/burger.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListDrinks()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(5),
                  child: Image(
                    image: AssetImage("images/coffe.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPizzas()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(5),
                  child: Image(
                    image: AssetImage("images/pizza.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Populares',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          Container(
            width: double.infinity,
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  height: 210,
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('images/beefb.png'),
                        ListTile(
                          title:
                              Text('Beef Burger', textAlign: TextAlign.center),
                          subtitle: Text('Mcdi\n\nRp. 20.000',
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('images/pizz.png'),
                        ListTile(
                          title:
                              Text('Pizza Fruit', textAlign: TextAlign.center),
                          subtitle: Text('Pija hut\n\nRp. 40.000',
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 210,
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('images/beefb.png'),
                        ListTile(
                          title:
                              Text('Beef Burger', textAlign: TextAlign.center),
                          subtitle: Text('Mcdi\n\nRp. 20.000',
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('images/pizz.png'),
                        ListTile(
                          title:
                              Text('Pizza Fruit', textAlign: TextAlign.center),
                          subtitle: Text('Pija hut\n\nRp. 40.000',
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavoritosPage()),
            );
          }
          else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
            );
          }
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Mensagens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
