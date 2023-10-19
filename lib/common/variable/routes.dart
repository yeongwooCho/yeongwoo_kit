// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class RouteNames {
//   // initial
//   static const String splash = '/';
//
//   // onBoarding, login, register, findID, passwordReset
//   static const String onBoarding = '/onBoarding';
//
//   static const String emailLogin = '/email/login';
//   static const String terms = '/terms';
//   static const String termsProviding = '/terms/providing';
//   static const String emailRegister = '/email/register';
//   static const String findEmail = '/find/email';
//   static const String findEmailCompletion = '/find/email/completion';
//   static const String findPassword = '/find/password';
//   static const String findPasswordChange = '/find/password/change';
//   static const String findPasswordCompletion = '/find/password/completion';
//   static const String emailRegisterCompletion = '/email/register/completion';
//
//   // kakao sign up
//   static const String kakaoRegister = '/kakao/register';
//
//   // root tab
//   static const String root = '/root';
//
//   // notification
//   static const String notification = '/notification';
//   static const String notificationDetail = '/notification/detail';
//   static const String notificationEdit = '/notification/edit';
//
//   // mypage
//   static const String mypage = '/mypage';
//   static const String settings = '/settings';
//   static const String withdraw = '/withdraw';
//   static const String introduce = '/introduce';
//   static const String myParticipation = '/my/participation';
//
//   // festival
//   static const String festivalDetail = '/festival/detail';
//   static const String kakaoMap = '/kakao/map';
//
//   // festival_list
//   static const String festivalRegister = '/festival/register';
//
// // // custom
// // static const String selectFabric = '/select/fabric';
// // static const String printing = '/printing';
// // static const String customGuide = '/custom/guide';
// //
// // // search
// // static const String productDetail = '/product/detail';
// //
// // // purchase
// // static const String purchase = '/purchase';
// }
//
// Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
//   // // global
//   // RouteNames.completion: (context) {
//   //   final args = ModalRoute.of(context)?.settings.arguments as ScreenArguments;
//   //   String title = '';
//   //   if (args.title == 'title') {
//   //     title = args.message;
//   //   } else {
//   //     title = '_';
//   //   }
//   //   return CompletionScreen(title: title);
//   // },
//
//   // onBoarding, login, register, findID, passwordReset
//   RouteNames.onBoarding: (_) => OnBoardingScreen(),
//   RouteNames.emailLogin: (_) => EmailLoginScreen(),
//   RouteNames.terms: (_) => TermsScreen(),
//   RouteNames.termsProviding: (_) => TermsProvidingInfoScreen(),
//   RouteNames.emailRegister: (_) => EmailRegisterScreen(),
//   RouteNames.findEmail: (_) => FindEmailScreen(),
//   RouteNames.findEmailCompletion: (context) {
//     final args =
//     ModalRoute
//         .of(context)
//         ?.settings
//         .arguments as ScreenArguments<String>;
//     return FindEmailCompletionScreen(email: args.data);
//   },
//   RouteNames.findPassword: (_) => FindPasswordScreen(),
//   RouteNames.findPasswordChange: (_) => FindPasswordChangeScreen(),
//   RouteNames.findPasswordCompletion: (_) => FindPasswordCompletionScreen(),
//
//   // kakao
//   RouteNames.kakaoRegister: (_) => KakaoRegisterScreen(),
//
//   // root tab
//   RouteNames.root: (_) => RootTab(),
//
//   // notification
//   RouteNames.notification: (_) => NotificationScreen(),
//   RouteNames.notificationDetail: (context) {
//     final args = ModalRoute
//         .of(context)
//         ?.settings
//         .arguments
//     as ScreenArguments<NotificationModel>;
//
//     return NotificationDetailScreen(
//       notificationModel: args.data,
//     );
//   },
//   RouteNames.notificationEdit: (_) => AdminNotificationEditScreen(),
//
//   // mypage
//   RouteNames.settings: (context) {
//     final args = ModalRoute
//         .of(context)
//         ?.settings
//         .arguments
//     as ScreenArguments<UserModel>;
//
//     return SettingsScreen(
//       userModel: args.data,
//     );
//   },
//   RouteNames.withdraw: (_) => WithdrawScreen(),
//   RouteNames.introduce: (_) => IntroduceScreen(),
//   RouteNames.myParticipation: (_) => MyParticipationScreen(),
//
//   // festical
//   RouteNames.festivalDetail: (context) {
//     final args = ModalRoute
//         .of(context)
//         ?.settings
//         .arguments
//     as ScreenArguments<FestivalModel>;
//     final festivalProvider = context.read<FestivalProvider>();
//     festivalProvider.getFestival(id: args.data.id);
//
//     return FestivalDetailScreen(
//       festivalModel: args.data,
//     );
//   },
//   RouteNames.kakaoMap: (context) {
//     final args =
//     ModalRoute
//         .of(context)
//         ?.settings
//         .arguments as ScreenArguments<LatLng>;
//
//     return KakaoMapScreen(
//       latLng: args.data,
//     );
//   },
//
//   // festival list
//   RouteNames.festivalRegister: (_) => FestivalRegisterScreen(),
// }
