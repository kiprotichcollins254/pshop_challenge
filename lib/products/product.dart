import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pshop/utils/colors.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<String> imagelist = [
    "asset/images/products/product_three.jpg",
    "asset/images/products/product_four.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          // ignore: prefer_const_constructors
          icon: Icon(Icons.arrow_back_ios),
        ),
        leadingWidth:80,
        actions: [
          IconButton(
              onPressed: () {
                //TODO : Add Navigation to cart
                // ignore: prefer_const_constructors
              },
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
             height: 10,
             ),
            CarouselSlider(
                options: CarouselOptions(
                  height: 300,
                  
                ),
                items: imagelist.map((e) {
                  return Builder(builder: (BuildContext context) {
                    return SizedBox(
                      height: 300,
                      width: 250,
                      
                      child: Image(
                        image: AssetImage(e),
                        fit: BoxFit.cover,
                      ).animate().fadeIn(duration: 1000.ms),
                    );
                  });
                }).toList()),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Product Name",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ).animate().fadeIn(duration: 1000.ms, delay: 200.ms),
            const Text(
              "Lorum Ipsum and content is here",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ).animate().fadeIn(duration: 1000.ms, delay: 300.ms),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  color: pshopsecondarycolor,
                  elevation: 8.0,
                  child: SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        children: [
                          // const Expanded(
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.stacked_bar_chart_sharp,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Height",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "30cm-40cm",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.thermostat_auto_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Temperature",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "20c-25c",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.tapas_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Pot",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "ciramic pot",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          // ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Column(
                                children: [
                                  Text(
                                    "Total Price",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "KES 200",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size.fromWidth(
                                          MediaQuery.of(context).size.width /
                                              2),
                                      backgroundColor: pshopprimarycolor),
                                  child: const Text(
                                    "Add To Cart",
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ).animate().scale(duration: 1000.ms, delay: 400.ms),
              ),
            )
          ],
        ),
      ),
    );
  }
}
