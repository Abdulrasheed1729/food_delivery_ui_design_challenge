import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // constraints: BoxConstraints(
              //     maxWidth: double.infinity,
              //     minWidth: MediaQuery.of(context).size.width),
              height: MediaQuery.of(context).size.height - 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  // bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.chevron_left_rounded,
                          size: 45.0,
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.grey.shade200,
                          child: const Icon(
                            Icons.delete_outline,
                            color: Colors.black,
                          ),
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
                          'My Order',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 220,
                    child: Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: _buildListItem(
                              imagepath: 'assets/images/ramen-1.png',
                              price: 12.0,
                              quantity: 3,
                              calorie: '500 g',
                              name: 'Ramen with \nVeggies',
                              color: Colors.amberAccent.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: _buildListItem(
                              imagepath: 'assets/images/ramen-2.png',
                              price: 24.0,
                              quantity: 2,
                              calorie: '460 g',
                              name: 'Ramen Soup with \nPork and Beef',
                              color: Colors.green.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: _buildListItem(
                              imagepath: 'assets/images/pepsi.png',
                              price: 4.0,
                              quantity: 3,
                              calorie: '330 ml',
                              name: 'Pepsi Cola',
                              color: Colors.cyan.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: _buildListItem(
                              imagepath: 'assets/images/classic_coca-cola.png',
                              price: 5.0,
                              quantity: 2,
                              calorie: '330 ml',
                              name: 'Classic Coca-Cola',
                              color: Colors.teal.shade200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0, left: 20),
                    child: Text(
                      'Total:',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 50.0, left: 0),
                    child: Text(
                      '\$ 106',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Confirm order',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListItem({
    int quantity = 0,
    String name = '',
    String calorie = '',
    String imagepath = '',
    double price = 0.0,
    Color color = Colors.amber,
  }) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -30,
                  right: -30,
                  child: Image(
                    image: AssetImage(imagepath),
                    height: 150,
                    width: 150,
                  ),
                ),
                Positioned(
                  bottom: -5,
                  left: -5,
                  child: Container(
                    height: 30.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Center(
                            child: Text('-'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text('$quantity'),
                            ),
                            color: Colors.grey.shade400,
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text('+'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 5.0),
                child: Text(
                  '\$ $price',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  name,
                  style: const TextStyle(
                    wordSpacing: 2.0,
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 15.0),
                child: Text(
                  'Entrance: ' + calorie + '.',
                  style: const TextStyle(
                    wordSpacing: 2.0,
                    color: Colors.grey,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
