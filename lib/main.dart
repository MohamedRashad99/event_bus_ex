import 'package:flutter/material.dart';
import 'payment_screen.dart';
import 'notifications_listener.dart';
import 'analytics_service.dart';

void main() {
  AnalyticsService(); // تشغيل خدمة التحليلات
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      ///////////
      title: 'Event Bus Demo',
      home: Stack(
        children: [
          PaymentScreen(),
          NotificationListenerWidget(), // مستمع الإشعارات
        ],
      ),
    );
  }
}
