import 'package:flutter/material.dart';
import 'event_bus_service.dart';
import 'event_bus_service.dart';

class PaymentScreen extends StatelessWidget {
  void processPayment() {
    // بيانات وهمية للدفع الناجح
    double amount = 100.0;
    String transactionId = "TXN12345";

    // إطلاق الحدث
    eventBus.fire(PaymentSuccessEvent(amount, transactionId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: processPayment,
          child: Text("إتمام الدفع"),
        ),
      ),
    );
  }
}
