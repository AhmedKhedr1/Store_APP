// ignore_for_file: file_names, non_constant_identifier_names

import 'package:dio/dio.dart';

class Api {
  Dio dio = Dio();
  Future<dynamic> get({required String URL}) async {
    final Response = await dio.get(URL);
    if (Response.statusCode == 200) {
      return Response.data;
    } else {
      throw Exception(
          'there is a problem with status code ${Response.statusCode} ');
    }
  }

  Future<dynamic> post({required String URL}) async {
    final response = await dio.post(URL,
        data: {
          'title': 'test',
          'price': 13.5,
          'descraption': 'dio descreption',
          'image': 'dio',
          'category': 'electronic'
        },
        options: Options(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Bearer',
        }));
  }
}
//'https://fakestoreapi.com/products'
