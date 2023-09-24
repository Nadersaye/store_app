import '../helper/api.dart';

class AllCategories {
  Future<List<dynamic>> allCategoriesService() async {
    List<dynamic> data =
        await ApiService().get(uri: 'https://fakestoreapi.com/products');
    return data;
  }
}
