import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

import '../../constants/strings/string.dart';

class ApiRequest {
  final String url;
  Map<String, String>? queryParameters;
  var data;
  final box = GetStorage();

  ApiRequest({
    required this.url,
    this.queryParameters,
    this.data,
  });

  Dio _dio() {
    var dio = Dio(BaseOptions(
      connectTimeout: 5000000,
      receiveTimeout: 5000000,
    ));
    dio.interceptors.add(DioCacheManager(CacheConfig()).interceptor);
    /*var token = box.read('token');
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) {
          if (token != null && token != '') {
            request.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(request);
        },
      ),
    );*/
    return dio;
  }

  get() async {
    try {
      var res = (await _dio().get(url, queryParameters: queryParameters));

      if (res.statusCode == 200) {
        return res.data;
      } else {
        return null;
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        if (kDebugMode) {
          print("${_dio().options.baseUrl}$url");
          print('catched$e');
        }
        return null;
      }
      if (e.type == DioErrorType.connectTimeout) {
        if (kDebugMode) {
          print('check your connection');
        }
        return null;
      }

      if (e.type == DioErrorType.receiveTimeout) {
        if (kDebugMode) {
          print('unable to connect to the server');
        }
        return null;
      }

      if (e.type == DioErrorType.other) {
        if (kDebugMode) {
          print('Something went wrong$e');
        }
        return null;
      }
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future post({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    _dio().post(url, data: data).then((res) {
      if (onSuccess != null) {
        onSuccess(res.data);
        print("************${res.data}");
      }
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }

  Future put({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    _dio().put(url, data: data).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }

  Future delete({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    _dio().delete(url).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
