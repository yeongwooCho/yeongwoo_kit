import 'package:flutter/cupertino.dart';

void showAlert({
  required BuildContext context,
  required Widget titleWidget,
  required String completeText,
  required void Function()? completeFunction,
  required String cancelText,
  required void Function()? cancelFunction,
  Widget? contentWidget,
}) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: titleWidget,
        content: contentWidget,
        actions: [
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: completeFunction,
            child: Text(completeText),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: cancelFunction,
            child: Text(cancelText),
          )
        ],
      );
    },
  );
}
