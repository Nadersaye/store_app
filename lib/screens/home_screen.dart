import 'package:flutter/material.dart';
import 'package:store_app/models/all_prodect_model.dart';

import '../services/get_all_products.dart';
import '../widgets/custom_grid_view.dart';

class HomwScreen extends StatelessWidget {
  const HomwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store App'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: GetAllProductes().getAllProduct(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            List<ProductModel> products = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 70, 10, 30),
              child: CustomGridView(
                product: products,
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
