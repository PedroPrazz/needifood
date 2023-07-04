import 'package:flutter/material.dart';
import 'package:needifood/burgers.dart';
import 'package:needifood/cart.dart';
import 'detalhebanner.dart';
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
  TextEditingController _searchController = TextEditingController();
  List cartItems = [];

void _performSearch(String searchText) {
  String lowercaseSearch = searchText.toLowerCase();

    if (lowercaseSearch == 'burgers' || lowercaseSearch == 'burger' || lowercaseSearch == 'hamburguer') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListBurgers()),
      );
    } else if (lowercaseSearch == 'drinks' || lowercaseSearch == 'drink' || lowercaseSearch == 'refri' || lowercaseSearch == 'refrigerante') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListDrinks()),
      );
    } else if (lowercaseSearch == 'pizzas' || lowercaseSearch == 'pizza') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListPizzas()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: TextField(
              controller: _searchController,
              onSubmitted: _performSearch,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: "Pesquisar alimento",
                prefixIcon: Image.asset('images/logo2.png'),
                suffixIcon: Icon(Icons.search),
                hintStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalheBanner()),
              );
            },
            child: Container(
              width: 500,
              height: 170,
              child: Image.asset('images/banner1.png'),
            ),
          ),
          SizedBox(height: 10),
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
                  height: 200,
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
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recomendados',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          Container(
            width: double.infinity,
            height: 164,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 210,
                  height: 130,
                  margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.asset('images/bg2.png'),
                      ],
                  ),
                ),
                Container(
                  width: 210,
                  height: 130,
                  margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.asset('images/bg2.png'),
                      ],
                  ),
                ),
                Container(
                  width: 210,
                  height: 130,
                  margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.asset('images/bg2.png'),
                      ],
                    ),
                ),
              ],
            ),
          ),
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
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavoritosPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage(cartItems: cartItems,)),
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
