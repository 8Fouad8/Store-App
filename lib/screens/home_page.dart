import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
          ),
        ],
        elevation: 0,
        title: Text("New Trend", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(15),
                    spreadRadius: 5,
                    blurRadius: 12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              height: 130,
              width: 180,
              child: Card(
                color: Colors.white,
                shape: Border(),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Backback blue',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r'$333', style: TextStyle(fontSize: 16)),
                          Icon(Icons.favorite_border_outlined),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(top: -50,right: 30,child: Image.network('https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png', height: 100, ),)
          ],
        ),
      ),
    );
  }
}