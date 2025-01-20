import 'package:dio/dio.dart';
import 'package:store_app/core/Helper/Api.dart';
import 'package:store_app/core/models/Product_Model.dart';

class GetAllProductServices {
  final dio = Dio();
  Future<List<ProductModel>> GetAllproduct() async {
    List<dynamic> jsondata =
        await Api().get(URL: 'https://fakestoreapi.com/products');
    List<ProductModel> Productslist = [];

    for (int i = 0; i < jsondata.length; i++) {
      Productslist.add(ProductModel.fromJson(jsondata[i]));
    }

    return Productslist;
  }
}
