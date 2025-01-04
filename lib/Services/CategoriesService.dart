import 'package:dio/dio.dart';
import 'package:store_app/Helper/Api.dart';
import 'package:store_app/models/Product_Model.dart';

class Categoriesservice {
  Dio dio = Dio();
  Future<List<ProductModel>> getProductByCategory(
      {required String CategoryName}) async {
    List<dynamic> jsondata = await Api()
        .get(URL: 'https://fakestoreapi.com/products/category/$CategoryName');
    List<ProductModel> Productslist = [];
    for (int i = 0; i < jsondata.length; i++) {
      Productslist.add(ProductModel.fromJson(jsondata[i]));
    }
    return Productslist;
  }
}
