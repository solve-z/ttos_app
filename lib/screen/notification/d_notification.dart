import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/nav.dart';
import 'package:ttos_app/screen/notification/vo/vo_notification.dart';
import 'package:ttos_app/screen/notification/w_notification_item.dart';

class NotificationDialog extends DialogWidget {
  final List<TtossNotification> notifications;
  NotificationDialog(this.notifications,
      {super.key, super.animation = NavAni.Top});

  @override
  State<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.notifications
              .map((element) => NotificationItemWidget(
                  onTap: () {
                    widget.hide();
                  },
                  notification: element))
              .toList()
        ],
      ),
    );
  }
}
