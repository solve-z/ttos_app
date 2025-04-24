import 'package:ttos_app/screen/notification/vo/notification_type.dart';

class TtossNotification {
  //이미지, 타이틀, 설명 , 시간

  final NotificationType type;
  final String description;
  final DateTime time;
  bool isRead;

  TtossNotification(
    this.type,
    this.description,
    this.time, {
    this.isRead = false,
  });
}
