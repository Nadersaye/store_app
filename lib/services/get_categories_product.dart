import '../helper/api.dart';
import '../models/all_prodect_model.dart';

class GetAllCategoriesProduct {
  Future<List<ProductModel>> getAllCategoriesProduct(
      {required String query}) async {
    List<dynamic> data = await ApiService()
        .get(uri: 'https://fakestoreapi.com/products/category/$query');
    List<ProductModel> categoriesProducts = [];
    for (var i = 0; i < data.length; i++) {
      categoriesProducts.add(ProductModel.fromJson(data[i]));
    }
    return categoriesProducts;
  }
}
