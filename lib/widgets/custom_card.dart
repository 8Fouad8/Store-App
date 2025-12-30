import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
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
                      product.title.split(' ').take(2).join(' '),
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$'
                          '${product.price}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.favorite_border_outlined),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -55,
            right: 30,
            child: Image.network(product.image, height: 100, width: 100),
          ),
        ],
      ),
    );
  }
}
