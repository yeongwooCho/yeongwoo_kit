import 'package:flutter_dotenv/flutter_dotenv.dart';

class Url {
  static const bool loggingInterceptorEnabled = true;
  static int connectTimeout = 10000; // 10 seconds
  static int receiveTimeout = 10000; // 10 seconds

  // base
  static String baseUrl = dotenv.env['BASE_URL']!;

  // user
  static String duplicateEmail = "$baseUrl/auth/email-duplicate";
  static String duplicatePhone = "$baseUrl/auth/phone-duplicate";
  static String userInfo = "$baseUrl/members/my-info";
  static String signUp = "$baseUrl/auth/sign-up";
  static String signIn = "$baseUrl/auth/sign-in";
  static String tokenSignIn = "$baseUrl/auth/check";
  static String reissue = "$baseUrl/auth/reissue";
  static String findEmail = "$baseUrl/auth/find-email";
  static String findPassword = "$baseUrl/auth/find-password";
  static String changePassword = "$baseUrl/members/password";
  static String withdraw = "$baseUrl/members/withdraw";

  // notification
  // Create, Read
  static String noticeBoard = "$baseUrl/notice-boards";

  // Update, Delete
  // static String noticeBoard = "$baseUrl/notice-board/1";

  // festival
  // Create, Retrieve list
  static String festivals = "$baseUrl/festivals";

  // Retrieve once
  // static String festival = "$baseUrl/festivals/4";

  // festival status
  // static String festivalStatus = "$baseUrl/festivals?status=PAST";

  // festival participate
  // static String festivalParticipate = "$baseUrl/festivals/12/participate";

  // festival chat create
  static String festivalChats = "$baseUrl/chats";

  // static String chatLike = "$baseUrl/chats/${chatId}/like";
  // static String chatDeclaration = "$baseUrl/chats/${chatId}/declare";
  static String getUrlChatLike({
    required int chatId,
  }) {
    return "$baseUrl/chats/$chatId/like";
  }

  static String getUrlChatDeclare({
    required int chatId,
  }) {
    return "$baseUrl/chats/$chatId/declare";
  }
}
