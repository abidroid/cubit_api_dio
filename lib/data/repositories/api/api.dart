import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Api {
  final Dio _dio = Dio();
  Dio get dio => _dio;

  Api() {
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
    _dio.interceptors.add(PrettyDioLogger());
  }
}
