import 'package:dio/dio.dart';
import 'package:store_app/core/Helper/Api.dart';

class Getallcategoriesservice {
  Dio dio = Dio();
  Future<List<dynamic>> Getallcategories() async {
    List<dynamic> jsondata =
        await Api().get(URL: 'https://fakestoreapi.com/products/categories');
    return jsondata;
  }
}
