
import 'package:flutter/material.dart';
import 'order_success_page.dart';

class PaymentOptionsPage extends StatefulWidget {
  final double totalPrice;
  final String deliveryAddress;

  const PaymentOptionsPage({
    super.key,
    required this.totalPrice,
    required this.deliveryAddress,
  });

  @override
  State<PaymentOptionsPage> createState() => _PaymentOptionsPageState();
}

class _PaymentOptionsPageState extends State<PaymentOptionsPage> {
  int selectedMethod = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263124),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "SELECT PAYMENT METHOD",
              style: TextStyle(
                fontFamily: "IrishGrover",
                fontSize: 22,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            _buildPaymentOption(
              index: 0,
              color: Colors.white,
              logo: "assets/images/visa.png",
            ),

            const SizedBox(height: 16),

            _buildPaymentOption(
              index: 1,
              color: Colors.green.shade600,
              logo: "assets/images/mastercard.png",
            ),

            const SizedBox(height: 16),

            _buildPaymentOption(
              index: 2,
              color: Colors.green.shade800,
              logo: "assets/images/cash.png",
            ),

            const SizedBox(height: 25),

            const Text(
              "DELIVERY ADDRESS",
              style: TextStyle(
                fontFamily: "IrishGrover",
                fontSize: 22,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFF31412E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.white, size: 28),
                  const SizedBox(width: 12),

                  Expanded(
                    child: Text(
                      widget.deliveryAddress,
                      style: const TextStyle(
                        fontFamily: "InstrumentSans",
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ),

                  const Icon(Icons.edit, color: Colors.white70),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "TOTAL PRICE",
                  style: TextStyle(
                    fontFamily: "IrishGrover",
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),

                Text(
                  "${widget.totalPrice.toStringAsFixed(2)} \$",
                  style: const TextStyle(
                    fontFamily: "IrishGrover",
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            GestureDetector(
              onTap: () {
                if (selectedMethod == -1) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Please select a payment method"),
                    ),
                  );
                  return;
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const OrderSuccessPage(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E7D32),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Center(
                  child: Text(
                    "PLACE ORDER",
                    style: TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption({
    required int index,
    required Color color,
    required String logo,
  }) {
    return GestureDetector(
      onTap: () => setState(() => selectedMethod = index),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Image.asset(logo, width: 55, height: 35),
            const Spacer(),
            Icon(
              selectedMethod == index ? Icons.circle : Icons.circle_outlined,
              color: Colors.black,
            ),
          ],
        ),

        
      ),
    );
  }
}