import 'package:flutter/material.dart';
import 'payment_page.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({super.key});

  @override
  State<PurchasePage> createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  
  final List<Map<String, dynamic>> _items = [
    {
      "title": "THE BUCKET HAT",
      "price": 35.0,
      "image": "assets/images/buckethat.webp",
      "qty": 0,
    },
    {
      "title": "SCARF",
      "price": 25.0,
      "image": "assets/images/scarf.webp",
      "qty": 0,
    },
    {
      "title": "T-SHIRT",
      "price": 60.0,
      "image": "assets/images/tshirt.webp",
      "qty": 0,
    },
    {
      "title": "MAGAZINE",
      "price": 10.0,
      "image": "assets/images/magazine.webp",
      "qty": 0,
    },
    {
      "title": "SMOKE BOMB",
      "price": 15.0,
      "image": "assets/images/smokebomb.webp",
      "qty": 0,
    },
    {
      "title": "HOODIE",
      "price": 15.0,
      "image": "assets/images/hoodie.webp",
      "qty": 0,
    },
  ];

  
  double get totalPrice {
    double sum = 0;
    for (var item in _items) {
      sum += (item["price"] as double) * (item["qty"] as int);
    }
    return sum;
  }

 
  void _increaseQty(int index) {
    setState(() => _items[index]["qty"]++);
  }

  
  void _decreaseQty(int index) {
    setState(() {
      if (_items[index]["qty"] > 0) _items[index]["qty"]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263124),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 28),
                  ),
                  const Icon(Icons.delete_outline,
                      color: Colors.white, size: 28),
                ],
              ),

              const SizedBox(height: 15),

              const Text(
                "MY ORDER",
                style: TextStyle(
                  fontFamily: "IrishGrover",
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

          
              Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    final item = _items[index];
                    return _buildCartItem(
                      title: item["title"],
                      price: item["price"],
                      image: item["image"],
                      qty: item["qty"],
                      onPlus: () => _increaseQty(index),
                      onMinus: () => _decreaseQty(index),
                    );
                  },
                ),
              ),

              const SizedBox(height: 16),

             
              const Text(
                "DELIVERY CHARGE :",
                style: TextStyle(
                  fontFamily: "InstrumentSans",
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "0\$",
                style: TextStyle(
                  fontFamily: "IrishGrover",
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TOTAL
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "TOTAL PRICE",
                        style: TextStyle(
                          fontFamily: "InstrumentSans",
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "${totalPrice.toStringAsFixed(2)} \$",
                        style: const TextStyle(
                          fontFamily: "IrishGrover",
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),

                  
                  GestureDetector(
                    onTap: () {
                      final selected = _items
                          .where((item) => item["qty"] > 0)
                          .toList();

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PaymentPage(
                            totalPrice: totalPrice,
                            selectedItems: selected,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2E7D32),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Text(
                        "Checkout",
                        style: TextStyle(
                          fontFamily: "InstrumentSans",
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCartItem({
    required String title,
    required double price,
    required String image,
    required int qty,
    required VoidCallback onPlus,
    required VoidCallback onMinus,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF31412E),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: "IrishGrover",
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "${price.toStringAsFixed(0)}\$",
                  style: const TextStyle(
                    fontFamily: "InstrumentSans",
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              GestureDetector(
                onTap: onMinus,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.remove,
                      color: Colors.white, size: 18),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "$qty",
                style: const TextStyle(
                  fontFamily: "IrishGrover",
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: onPlus,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFF2E7D32),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.add,
                      color: Colors.white, size: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
