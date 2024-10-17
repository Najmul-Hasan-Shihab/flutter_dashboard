import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.zero,
                    bottom: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.translate_outlined,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "DASHBOARD",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Welcome!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 125,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.8,
                      shrinkWrap: true,
                      children: [
                        buildGridItem('assets/images/customers.jpg', 'CUSTOMERS'),
                        buildGridItem('assets/images/suppliers.jpeg', 'SUPPLIERS'),
                        buildGridItem('assets/images/products.jpg', 'PRODUCTS'),
                        buildGridItem('assets/images/pos.jpg', 'POS'),
                        buildGridItem('assets/images/card.jpg', 'EXPENSE'),
                        buildGridItem('assets/images/orders.jpg', 'ORDERS'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGridItem(String imagePath, String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imagePath,
              height: 130,
              width: 130,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 25),
          Text(label, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
          ),
        ],
      ),
    );
  }
}