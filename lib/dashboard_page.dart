import 'package:flutter/material.dart';
import 'product_details_page.dart';
import 'product.dart';
import 'package:flutter_application_ultras/purchase_page.dart';

class DashboardPage extends StatelessWidget {
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
  }
}