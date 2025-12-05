import 'package:flutter/material.dart';
import 'payment_options_page.dart';

class PaymentPage extends StatefulWidget {
  final double totalPrice;
  final List<Map<String, dynamic>> selectedItems;

  const PaymentPage({
    super.key,
    required this.totalPrice,
    required this.selectedItems,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final selected = widget.selectedItems;

    return Scaffold(
      backgroundColor: const Color(0xFF263124),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          "PAYMENT",
          style: TextStyle(
            fontFamily: "IrishGrover",
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Your Items",
              style: TextStyle(
                fontFamily: "IrishGrover",
                fontSize: 22,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: selected.length,
                itemBuilder: (context, index) {
                  final item = selected[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 14),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF31412E),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            item["image"],
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["title"],
                                style: const TextStyle(
                                  fontFamily: "IrishGrover",
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "${item["price"]}\$  x ${item["qty"]}",
                                style: const TextStyle(
                                  fontFamily: "InstrumentSans",
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              "Delivery Address",
              style: TextStyle(
                fontFamily: "IrishGrover",
                fontSize: 22,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

            _buildTextField(
              controller: addressController,
              hint: "Enter your full address...",
              icon: Icons.location_on,
            ),

            const SizedBox(height: 10),

            _buildTextField(
              controller: phoneController,
              hint: "Enter your phone number",
              icon: Icons.phone,
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Final Total",
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
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            GestureDetector(
              onTap: () {
                if (addressController.text.isEmpty ||
                    phoneController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please fill all fields.")),
                  );
                  return;
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PaymentOptionsPage(
                      totalPrice: widget.totalPrice,
                      deliveryAddress: addressController.text,
                    ),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E7D32),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Center(
                  child: Text(
                    "CONFIRM ORDER",
                    style: TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFE6E6E6),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(icon, color: Colors.black54),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black45),
        ),
      ),
    );
  }
}
