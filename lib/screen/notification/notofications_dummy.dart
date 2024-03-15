import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtossNotification>[
  TtossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한 편 어때요? CGV 할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.stock,
    '인적분할에 대해 알려드릴게요',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.walk,
    '1000걸음 이상 걸었다면 포인트 받으세요',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.moneyTip,
    '유럽물가가 치솟고 있어요.\n남반석님, 유럽여행에 관심이 있다면 확인해보세요.',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.people,
    '이번주에 영화 한 편 어때요? CGV 할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.luck,
    '이번주에 영화 한 편 어때요? CGV 할인 쿠폰이 도착했어요.',
    DateTime.now().subtract(1.days),
  )
];
