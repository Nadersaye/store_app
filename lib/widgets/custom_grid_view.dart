import 'package:flutter/material.dart';

import '../models/all_prodect_model.dart';
import 'custom_card.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.product});
  final List<ProductModel> product;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product.length,
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 80,
        ),
        itemBuilder: (context, index) {
          return CustomCard(product: product[index]);
        });
    /*GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      childAspectRatio: 3 / 2,
      children: List.generate(product.length, (index) {
        return CustomCard(
          product: product[index],
        );
      }),
    );*/
  }
}
