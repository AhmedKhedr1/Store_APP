// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:store_app/core/Helper/Api.dart';
import 'package:store_app/core/models/Product_Model.dart';

class Categoriesservice {
  Dio dio = Dio();
  Future<List<ProductModel>> getProductByCategory(
      // ignore: non_constant_identifier_names
      {required String  CategoryName}) async {
    List<dynamic> jsondata = await Api()
        .get(URL: 'https://fakestoreapi.com/products/category/$CategoryName');
    // ignore: non_constant_identifier_names
    List<ProductModel> Productslist = [];
    for (int i = 0; i < jsondata.length; i++) {
      Productslist.add(ProductModel.fromJson(jsondata[i]));
    }
    return Productslist;
  }
}
