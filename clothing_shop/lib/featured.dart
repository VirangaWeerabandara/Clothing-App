import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          FeaturedItem(
            title: 'Exclusive\nShoes',
            subtitle: 'Exclusive Shoes',
            discount: 'PRICE 25% OFF',
            discountCode: 'DISCOUNT CODE - VATE3120',
            image: 'assets/images/shoes.jpg',
          ),
          FeaturedItem(
            title: 'Exquisite Styles &\nCollections',
            subtitle: 'Exquisite Styles & Collections',
            discount: 'PRICE 15% OFF',
            discountCode: 'DISCOUNT CODE - VATE3120',
            image: 'assets/images/styles.jpg',
          ),
          FeaturedItem(
            title: 'New Arrivals',
            subtitle: 'New Arrivals',
            discount: 'PRICE 20% OFF',
            discountCode: 'DISCOUNT CODE - VATE3120',
            image: 'assets/images/arrivals.jpg',
          ),
          FeaturedItem(
            title: 'Exclusive\nItems',
            subtitle: 'Exclusive Items',
            discount: 'PRICE 35% OFF',
            discountCode: 'DISCOUNT CODE - VATE3120',
            image: 'assets/images/items.jpg',
          ),
        ],
      ),
    );
  }
}

class FeaturedItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String discount;
  final String discountCode;
  final String image;

  FeaturedItem({
    required this.title,
    required this.subtitle,
    required this.discount,
    required this.discountCode,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black54],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      discount,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      discountCode,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Color(0xFFD2B48C), // Light brown color
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Store Name',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Text('Catalogue'),
                Text('Women'),
                Text('Men'),
                Text('New Collection'),
                Text('Sale'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shop'),
                Text('About'),
                Text('Payment'),
                Text('Delivery'),
                Text('FAQ'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Contacts'),
                Text('1 (123) 456 78 90'),
                Text('temp@gmail.com'),
                Row(
                  children: [
                    Icon(Icons.facebook),
                    SizedBox(width: 10),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Subscribe to our newsletter'),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'your email address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
