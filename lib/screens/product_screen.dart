import 'package:finance_app/widgets/product_container.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List AvailabeProducts = [
    ['image/building1.jpg', '4 bedroom appartment', '\$50'],
    ['image/building2.jpg', '3 bedroom appartment', '\$60'],
    ['image/building3.jpg', '4 bedroom appartment', '\$70'],
    ['image/building4.jpg', '3 bedroom appartment', '\$30'],
    ['image/building5.jpg', '4 bedroom appartment', '\$50'],
    ['image/building6.jpg', '3 bedroom appartment', '\$60'],
    ['image/building7.jpg', '4 bedroom appartment', '\$90'],
    ['image/building8.jpg', '3 bedroom appartment', '\$50'],
    ['image/plan1.jpg', '4 bedroom appartment', '\$20'],
    ['image/plan2.jpg', '4 bedroom appartment', '\$30'],
    ['image/plan3.jpg', '4 bedroom appartment', '\$50'],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_open_outlined,
                      size: 40,
                    ),
                    Icon(
                      Icons.add_shopping_cart_outlined,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'Discover the best designs \n at a single click',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_outlined,
                        size: 40,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'search for your desired design',
                            hintStyle: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          height: 35,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.arrow_forward_outlined,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: AvailabeProducts.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ProductsList(
                          imagePath: AvailabeProducts[index][0],
                          productName: AvailabeProducts[index][1],
                          amount: AvailabeProducts[index][2],
                        ),
                      );
                    }),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
