import 'package:store_app/helper/api.dart';
import 'package:store_app/models/all_prodect_model.dart';

class GetAllProductes {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await ApiService().get(uri: 'https://fakestoreapi.com/products');
    List<ProductModel> products = [];
    for (var i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
