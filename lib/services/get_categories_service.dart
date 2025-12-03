
import 'package:store_app/helper/api.dart';

class GetCategoriesService {
  Future<List<dynamic>> getCategories() async {

      List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');
      return data;
 
    }
  }
