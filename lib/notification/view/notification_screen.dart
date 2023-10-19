import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/component/custom_list_card.dart';
import '../../common/const/colors.dart';
import '../../common/const/text_style.dart';
import '../../common/layout/default_appbar.dart';
import '../../common/layout/default_layout.dart';
import '../../common/view/custom_list_screen.dart';
import '../provider/notification_provider.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<NotificationProvider>();
    final notifications =
        provider.cache.isNotEmpty ? provider.cache.values.first : [];

    return DefaultLayout(
      appbar: const DefaultAppBar(title: '공지사항'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: notifications.isEmpty
            ? Center(
                child: Text(
                  '현재 등록된 공지가\n존재하지 않습니다.',
                  style: MyTextStyle.bodyTitleBold.copyWith(
                    color: MyColor.darkGrey,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            : CustomListScreen(
                itemCount: notifications.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomListCard(
                    title: notifications[index].title,
                    description:
                        "등록일자: ${notifications[index].createdAt.convertDateTimeToMinute}",
                    onTap: () {},
                  );
                },
              ),
      ),
    );
  }
}
