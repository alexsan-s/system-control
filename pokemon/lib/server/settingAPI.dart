import 'package:dio/dio.dart';

Dio dio = Dio(BaseOptions(
  baseUrl: "https://pokeapi.co/api/v2/",
));

Future<dynamic> requestAPI(String url) async {
  try {
    Map<String, dynamic> result = {};
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      print(response.data);
      result = response.data;
    }
    return result;
  } catch (e) {
    //
  }
}
