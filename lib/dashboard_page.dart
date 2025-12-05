import 'package:flutter/material.dart';
import 'product_details_page.dart';
import 'product.dart';
import 'purchase_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
   State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Product> allProducts = [
    Product(
      image: "assets/images/buckethat.webp",
      title: "THE BUCKET HAT",
      price: "35\$",
      description:
          "The bucket hat is a stylish dark green cap with white CSC 1898 embroidery, symbolizing ultras identity and loyalty.",
    ),
    Product(
      image: "assets/images/scarf.webp",
      title: "SCARF",
      price: "25\$",
      description:
          "A green and black scarf with Ultras Green Army text, showing pride and loyalty in the stands.",
    ),
    Product(
      image: "assets/images/tshirt.webp",
      title: "T-SHIRT",
      price: "60\$",
      description:
          "Green and black striped design with a white collar, CSC crest on the chest, and 1898 details on the sleeves.",
    ),
    Product(
      image: "assets/images/magazine.webp",
      title: "MAGAZINE",
      price: "10\$",
      description:
          "Black and green cover with “CSC e Basta”, reflecting ultras passion.",
    ),
    Product(
      image: "assets/images/smokebomb.webp",
      title: "SMOKE BOMB",
      price: "15\$",
      description:
          "A black canister releasing vibrant green smoke, used by ultras to create atmosphere and show support.",
    ),
    Product(
      image: "assets/images/hoodie.webp",
      title: "HOODIE",
      price: "15\$",
      description:
          "Black hoodie with the CSC crest on the chest and bold Green Army text.",
    ),
  ];

  List<Product> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = allProducts; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263124),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WELCOME",
                        style: TextStyle(
                          fontFamily: "IrishGrover",
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "One Spirit, One Voice",
                        style: TextStyle(
                          fontFamily: "IrishGrover",
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: const Color(0xFF263124),
                      size: 28,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

          
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.grey),
                        const SizedBox(width: 8),

                      
                        Expanded(
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                final query = value.toLowerCase();
                                filteredProducts = allProducts.where((product) {
                                  return product.title.toLowerCase().contains(query) ||
                                      product.description.toLowerCase().contains(query);
                                }).toList();
                              });
                            },
                            cursorColor: Colors.black,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "InstrumentSans",
                            ),
                            decoration: const InputDecoration(
                              hintText: "Search your favorite product",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontFamily: "InstrumentSans",
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

       
                  Positioned(
                    right: 6,
                    top: 4,
                    bottom: 4,
                    child: Container(
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.green.shade600, 
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              
              Text(
                "POPULAR",
                style: TextStyle(
                  fontFamily: "IrishGrover",
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

             
              Column(
                children: filteredProducts.map((p) {
                  return productCard(
                    context: context,
                    image: p.image,
                    title: p.title,
                    price: p.price,
                    description: p.description,
                  );
                }).toList(),
              ),

              const SizedBox(height: 10),

              
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PurchasePage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 14),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      "PURCHASE NOW",
                      style: TextStyle(
                        fontFamily: "IrishGrover",
                        fontSize: 18,
                        color: Color(0xFF263124),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget productCard({
    required BuildContext context,
    required String image,
    required String title,
    required String price,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFE6E6E6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),

          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: "IrishGrover",
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily: "InstrumentSans",
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(
                    fontFamily: "IrishGrover",
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

       
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(
                    product: Product(
                      image: image,
                      title: title,
                      price: price,
                      description: description,
                    ),
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Voir",
                style: TextStyle(
                  fontFamily: "IrishGrover",
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
