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
}
