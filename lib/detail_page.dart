import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
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
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 300,
                  decoration: BoxDecoration(
                    color: Colors.amber.shade200,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20.0,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 75.0,
                    width: 90.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(60.0),
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.favorite_border,
                        size: 35.0,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 15.0,
                  right: 15.0,
                  top: 80,
                  child: Image(
                    height: 250,
                    width: 250,
                    image: AssetImage('assets/images/ramen-2.png'),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height - 460,
                  left: 20.0,
                  child: const Text(
                    '\$ 24.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height - 510,
                  left: 20.0,
                  child: const Text(
                    'Ramen Soup With\nPork and Beef',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height - 590,
                  left: 20.0,
                  child: const Text(
                    'Ingredients :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                // Positioned(
                //   bottom: MediaQuery.of(context).size.height - 580,
                //   right: 25.0,
                //   child: Transform.rotate(
                //     angle: pi,
                //     child: const Icon(Icons.arrow_back_outlined),
                //   ),
                // )
                Positioned(
                  bottom: MediaQuery.of(context).size.height - 700,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            // mainAxisAlign
                            //ment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _buildIngredientCard(
                                    'assets/images/beef.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _buildIngredientCard(
                                    'assets/images/egg.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _buildIngredientCard(
                                    'assets/images/pork.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _buildIngredientCard(
                                    'assets/images/salt.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _buildIngredientCard(
                                    'assets/images/spinach.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _buildIngredientCard(
                                    'assets/images/carrot.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: _buildIngredientCard(
                                    'assets/images/chili.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  const TextButton(
                    onPressed: null,
                    child: Text(
                      '-',
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  ),
                  const Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  const TextButton(
                    onPressed: null,
                    child: Text(
                      '+',
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
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
                          'Add to order',
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

  Widget _buildIngredientCard(String imagePath) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Center(
        child: Image(
          height: 90.0,
          width: 90.0,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
