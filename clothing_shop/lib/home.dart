import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            FeaturedCollection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('UrbanThreads',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Row(
            children: [
              TextButton(child: Text('Home'), onPressed: () {}),
              TextButton(child: Text('Our Store'), onPressed: () {}),
              TextButton(child: Text('New Arrivals'), onPressed: () {}),
              TextButton(child: Text('Summer Sale'), onPressed: () {}),
              TextButton(child: Text('Featured'), onPressed: () {}),
              ElevatedButton(child: Text('Buy Now'), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}

class FeaturedCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey[300],
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Featured Collection',
                    style:
                        TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Text(
                    'Unlike no other, our sustainably made collections are magical statements of design, style and versatility. Simple silhouettes and highly skilled craftsmanship goes into each and every one of our pieces.'),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text('SHOP NOW'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[800]),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset('assets/img2.png')),
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
      color: Colors.brown[100],
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
                TextField(
                  decoration: InputDecoration(
                    hintText: 'your email address',
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
