import 'package:dio/dio.dart';
import 'package:quran_app/core/constants/key_constants.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio){
    _dio.options = BaseOptions(
      baseUrl: KeyConstants.baseUrl);
  }

  Future<dynamic> get({required String endPoint, Map<String, dynamic>? queryParameters}) async {
    final response = await _dio.get(
      endPoint,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}