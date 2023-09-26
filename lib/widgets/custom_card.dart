import 'package:flutter/material.dart';

import '../models/all_prodect_model.dart';
import '../screens/update_product.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductScreen.id,
            arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 20,
                offset: const Offset(10, 10),
              ),
            ]),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      product.title.substring(0, 6),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          PositionedDirectional(
              top: -60,
              start: 32,
              child: Image.network(
                product.image,
                fit: BoxFit.fill,
                height: 100,
                width: 100,
              )),
        ],
      ),
    );
  }
}
