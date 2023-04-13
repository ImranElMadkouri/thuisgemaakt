import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premium',
            style: TextStyle(
                color: Colors.white)), // Make title text color transparent
        backgroundColor:
            Colors.transparent, // Make AppBar background color transparent
        elevation: 0, // Remove AppBar elevation (shadow)
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCard(
              color: Colors.red,
              name: 'Gratis',
              price: '\$0 / maand',
              iconColor: Colors.white,
              icon1: Icons.close,
              icon1Color: Colors.white,
              icon2: Icons.close,
              icon2Color: Colors.white,
              icon3: Icons.close,
              icon3Color: Colors.white,
            ),
            SizedBox(width: 20),
            _buildCard(
              color: Colors.green,
              name: 'Premium',
              price: '\$2.99 / maand',
              iconColor: Colors.white,
              icon1: Icons.check,
              icon1Color: Colors.white,
              icon2: Icons.check,
              icon2Color: Colors.white,
              icon3: Icons.check,
              icon3Color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    @required Color color,
    @required String name,
    @required String price,
    @required Color iconColor,
    @required IconData icon1,
    @required Color icon1Color,
    @required IconData icon2,
    @required Color icon2Color,
    @required IconData icon3,
    @required Color icon3Color,
  }) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            price,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon1, color: icon1Color),
              SizedBox(width: 10),
              Text(
                'Geen reclames',
                style: TextStyle(
                  color: iconColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon2, color: icon2Color),
              SizedBox(width: 10),
              Text(
                'Favorieten',
                style: TextStyle(
                  color: iconColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon3, color: icon3Color),
              SizedBox(width: 10),
              Text(
                'Thema\'s',
                style: TextStyle(
                  color: iconColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
