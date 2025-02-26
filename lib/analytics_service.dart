import 'event_bus_service.dart';
import 'event_bus_service.dart';
import 'dart:async';

class AnalyticsService {
  late StreamSubscription _subscription;

  AnalyticsService() {
    _subscription = eventBus.on<PaymentSuccessEvent>().listen((event) {
      _logPayment(event);
    });
  }

  void _logPayment(PaymentSuccessEvent event) {
    print("📊 تحليلات: عملية دفع بقيمة ${event.amount} \$ معرف: ${event.transactionId}");
  }

  void dispose() {
    _subscription.cancel(); // تنظيف الاشتراك
  }
}
