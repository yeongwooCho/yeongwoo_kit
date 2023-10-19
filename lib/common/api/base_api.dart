import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yeongwoo_kit/common/api/logging_interceptor.dart';
import 'package:yeongwoo_kit/common/const/urls.dart';
import 'package:yeongwoo_kit/common/model/app_info.dart';

class BaseDio {
  Dio? dio;

  BaseDio()
      : dio = Dio(
          BaseOptions(
            baseUrl: Url.baseUrl,
            connectTimeout: Duration(milliseconds: Url.connectTimeout),
            receiveTimeout: Duration(milliseconds: Url.receiveTimeout),
            headers: {
              'App-Version': '${AppInfo.currentVersion}',
              'Device': Platform.isIOS ? 'ios' : 'android',
              'Content-Type': 'application/json',
              // 'Accept': 'application/json', --> 이거 넣으면 안됨.
            },
          ),
        ) {
    dio?.interceptors.addAll([
      LoggingInterceptor(),
    ]);
  }

  Dio buildDio() {
    if (dio != null) {
      return dio!;
    } else {
      return Dio();
    }
  }
}
