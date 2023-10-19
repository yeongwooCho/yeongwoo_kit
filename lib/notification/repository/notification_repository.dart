import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yeongwoo_kit/common/api/base_api.dart';
import 'package:yeongwoo_kit/common/const/urls.dart';
import 'package:yeongwoo_kit/common/model/api_response.dart';
import 'package:yeongwoo_kit/notification/model/notification_model.dart';

class NotificationRepository {
  final _dio = BaseDio().buildDio();

  Future<List<NotificationModel>> getNotifications() async {
    try {
      final resp = await _dio.get(
        Url.noticeBoard,
        options: Options(
          // headers: UserModel.getHeaders(),
        ),
      );

      ApiResponse<List<dynamic>> responseData =
          ApiResponse<List<dynamic>>.fromJson(json: resp.data);

      if (responseData.data == null) {
        return [];
      }

      final notifications = responseData.data!
          .map<NotificationModel>((e) => NotificationModel.fromJson(json: e))
          .toList();

      return notifications;
    } catch (e) {
      debugPrint('NotificationRepository getNotifications Error: ${e.toString()}');
      return [];
    }
  }

  Future<int?> createNotification({
    required String title,
    required String content,
  }) async {
    try {
      final resp = await _dio.post(
        Url.noticeBoard,
        options: Options(
          // headers: UserModel.getHeaders(),
        ),
        data: {
          "title": title,
          "content": content,
        },
      );

      ApiResponse<int> responseData =
          ApiResponse<int>.fromJson(json: resp.data);

      if (responseData.data == null) {
        return null;
      }

      return responseData.data!;
    } catch (e) {
      debugPrint('NotificationRepository createNotification Error: ${e.toString()}');
      return null;
    }
  }

  Future<bool> deleteNotification({
    required int id,
    required String title,
    required String content,
  }) async {
    try {
      final resp = await _dio.delete(
        "${Url.noticeBoard}/$id",
        options: Options(
          // headers: UserModel.getHeaders(),
        ),
        data: {
          "title": title,
          "content": content,
        },
      );

      ApiResponse<String> responseData =
          ApiResponse<String>.fromJson(json: resp.data);

      if (responseData.data == null) {
        return false;
      }
      return true;
    } catch (e) {
      debugPrint('NotificationRepository deleteNotification Error: ${e.toString()}');
      return false;
    }
  }
}
