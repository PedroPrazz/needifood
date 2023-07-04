import 'package:flutter/material.dart';

class DetalheBanner extends StatefulWidget {
  const DetalheBanner({super.key});

  @override
  State<DetalheBanner> createState() => _DetalheBannerState();
}

class _DetalheBannerState extends State<DetalheBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner'),
        centerTitle: true,
      ),
      body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 90),
                      width: 250,
                      height: 250,
                      child: Image.asset(
                        'images/beefburger.png'
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Beef Burger'),
                      Text('idr20K'),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 13, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on),
                      Text('Mcdi'),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 13, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star),
                      Text('4,7'),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Descrição')),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(left: 20, right: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Cheese burger dengan daging dan keju mozarella, hanya burger saja tidak dapat bungkus BTS.jika ingin menambah minum atau menu lain jangan lupa konfirmasi terlebih dahulu',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                ),
                SizedBox(height: 120),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      },
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart_checkout_rounded),
                          Text(' Adicionar ao carrinho'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
    );
  }
}