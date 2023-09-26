import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/all_prodect_model.dart';
import 'package:store_app/services/put_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textfield.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});
  static String id = 'update product';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? title, desc, img, price;
  bool? isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading!,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'updating product screen',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hintText: 'Enter the name of product',
                  onchange: (p0) {
                    title = p0;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hintText: 'Enter the description of product',
                  onchange: (p0) {
                    desc = p0;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  keyboardType: TextInputType.url,
                  hintText: 'Enter the image url of product',
                  onchange: (p0) {
                    img = p0;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  keyboardType: TextInputType.number,
                  hintText: 'Enter the price of product',
                  onchange: (p0) {
                    price = p0;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'update',
                  onClicked: () async {
                    setState(() {
                      isLoading = true;
                    });
                    try {
                      await updateProduct(product);
                    } catch (e) {
                      print(e.toString());
                    }
                    setState(() {
                      isLoading = false;
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProduct().updateProduct(
        title: title ?? product.title,
        price: price ?? product.price.toString(),
        description: desc ?? product.description,
        image: img ?? product.image,
        category: product.category,
        id: product.id);
  }
}
