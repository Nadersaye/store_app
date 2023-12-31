import '../helper/api.dart';
import '../models/all_prodect_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category,
      required int id}) async {
    Map<String, dynamic> data = await ApiService()
        .put(uri: 'https://fakestoreapi.com/products/$id', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category,
    });
    return ProductModel.fromJson(data);
  }
}
