import 'package:flutter/cupertino.dart';

class DialogUtils {
  static Future<void> showErrorDialog(BuildContext context, {String? message}) {
    return showCupertinoDialog(
      context: context,
      builder:
          (context) => CupertinoAlertDialog(
            title: Text('Lỗi', style: TextStyle(color: Color(0xFFDC3545))),
            content: Text(
              message ?? 'Đã có lỗi xảy ra, vui lòng thử lại.',
              style: TextStyle(fontSize: 16),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: () => Navigator.pop(context),
                isDestructiveAction: true,
                child: Text('Đóng', style: TextStyle(color: Color(0xFFDC3545))),
              ),
            ],
            insetAnimationDuration: const Duration(milliseconds: 200),
            insetAnimationCurve: Curves.decelerate,
          ),
    );
  }

  static void showLoadingDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => Center(child: CupertinoActivityIndicator(radius: 15)),
    );
  }
}
