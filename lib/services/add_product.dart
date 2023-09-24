import '../helper/api.dart';
import '../models/all_prodect_model.dart';

class AddProductes {
  Future<ProductModel> getAllProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    List<dynamic> data = await ApiService()
        .post(uri: 'https://fakestoreapi.com/products', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category,
    });
    return ProductModel.fromJson(data);
  }
}
