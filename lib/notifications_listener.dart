import 'package:flutter/material.dart';
import 'event_bus_service.dart';
import 'event_bus_service.dart';
import 'dart:async';

class NotificationListenerWidget extends StatefulWidget {
  @override
  _NotificationListenerWidgetState createState() => _NotificationListenerWidgetState();
}

class _NotificationListenerWidgetState extends State<NotificationListenerWidget> {
  late StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();

    // الاشتراك في الحدث
    _subscription = eventBus.on<PaymentSuccessEvent>().listen((event) {
      _showNotification(event);
    });
  }

  void _showNotification(PaymentSuccessEvent event) {
    print("🔔 إشعار: تم الدفع بنجاح ${event.amount} \$ بمعرف العملية ${event.transactionId}");
  }

  @override
  void dispose() {
    _subscription.cancel(); // تنظيف الاشتراك لتجنب Memory Leak
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // مجرد مستمع غير مرئي
  }
}
