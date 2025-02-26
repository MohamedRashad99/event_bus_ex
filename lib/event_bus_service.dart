import 'package:event_bus/event_bus.dart';

// إنشاء EventBus عالمي
EventBus eventBus = EventBus();
class PaymentSuccessEvent {
  final double amount;
  final String transactionId;

  PaymentSuccessEvent(this.amount, this.transactionId);
}
