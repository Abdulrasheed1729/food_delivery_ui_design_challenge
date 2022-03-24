import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Expanded(child: Container()),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Food Rash',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Container())
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: const Center(
                      child: Icon(Icons.filter_list, color: Colors.green),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Asian',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 70.0,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Italian',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 70.0,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'American',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'The Best Dishes',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: SizedBox(
                // height: 500,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: _buildFoodCard(
                        'assets/images/ramen-1.png',
                        'Ramen with\nveggies',
                        13.0,
                        Colors.pink.shade200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailPage(),
                            ),
                          );
                        },
                        child: _buildFoodCard(
                          'assets/images/ramen-2.png',
                          'Ramen Soup With\nPork and Beef',
                          24.0,
                          Colors.amber.shade200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home_outlined),
                Icon(Icons.favorite_border),
                Icon(Icons.shopping_bag_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFoodCard(
      String imagePath, String desc, double price, Color color) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Container(
        height: 400.0,
        width: 250.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -150.0,
              right: -130.0,
              child: Image(
                height: 500.0,
                width: 350.0,
                image: AssetImage(imagePath),
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(25.0),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.favorite_border,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 15.0,
              bottom: 100.0,
              child: Text(
                '\$ $price',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Positioned(
              left: 15.0,
              bottom: 50.0,
              child: Text(
                desc,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
