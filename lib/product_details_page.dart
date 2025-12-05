import 'package:flutter/material.dart';
import 'product.dart';
import 'package:flutter_application_ultras/purchase_page.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263124),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share, color: Colors.white),
          ),
          const SizedBox(width: 8),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // صورة المنتج داخل Card مع Gradient
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF1B2319), Color(0xFF3C4E39)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 18,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        product.image,
                        height: 230,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // عنوان المنتج
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Rating + السعر
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // Rating
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const Icon(Icons.star_half,
                              color: Colors.amber, size: 20),
                          const SizedBox(width: 6),
                          Text(
                            "4.8 (128 reviews)",
                            style: TextStyle(
                              fontFamily: "InstrumentSans",
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),

                      // السعر داخل Capsule
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.green.shade600,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          product.price,
                          style: const TextStyle(
                            fontFamily: "IrishGrover",
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // وصف المنتج
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    product.description,
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: "InstrumentSans",
                      color: Colors.white70,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // تفاصيل المنتج
                  const Text(
                    "Product details",
                    style: TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      _infoChip("Category", "Ultras merch"),
                      const SizedBox(width: 10),
                      _infoChip("Material", "100% Cotton"),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      _infoChip("Sizes", "S - M - L - XL"),
                      const SizedBox(width: 10),
                      _infoChip("Stock", "Available"),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // تعليمات الغسيل
                  const Text(
                    "Care instructions",
                    style: TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "- Wash inside out at 30°C.\n"
                    "- Do not bleach.\n"
                    "- Iron on low heat, avoid print.\n"
                    "- Do not tumble dry.",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "InstrumentSans",
                      color: Colors.white70,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 28),

                  // معلومات الشحن
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1B2319),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.local_shipping,
                            color: Colors.green, size: 26),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Free worldwide shipping on orders over 60\$.\n"
                            "Estimated delivery: 3 - 7 business days.",
                            style: const TextStyle(
                              fontSize: 13,
                              fontFamily: "InstrumentSans",
                              color: Colors.white70,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),

      // ================= BUY NOW BUTTON =================
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF1B2319),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 16,
              offset: const Offset(0, -6),
            ),
          ],
        ),

        child: Row(
          children: [

            // السعر
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontFamily: "InstrumentSans",
                      fontSize: 13,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    product.price,
                    style: const TextStyle(
                      fontFamily: "IrishGrover",
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // زر BUY NOW
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PurchasePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade600,
                padding: const EdgeInsets.symmetric(
                    horizontal: 28, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "BUY NOW",
                style: TextStyle(
                  fontFamily: "IrishGrover",
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============ Widget للبطاقات الصغيرة ============
  Widget _infoChip(String label, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF1B2319),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontFamily: "InstrumentSans",
                fontSize: 11,
                color: Colors.white60,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              value,
              style: const TextStyle(
                fontFamily: "InstrumentSans",
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
