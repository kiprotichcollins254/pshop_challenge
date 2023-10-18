import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/product');
      },
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width / 2,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Card(
          elevation: 8.0,
          // color: pshopbgprimary,
          // shadowColor: pshopprimarycolor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Image(image: ),
                Image.asset(
                  "asset/images/products/product_three.jpg",
                  height: 60,
                ),
                // const SizedBox(height: 5,),
                const Text("Product Name"),
                // const SizedBox(height: 5,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("KES 200"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 20,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.black),
                          iconColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white)),
                    ),
                    // ElevatedButton(onPressed: (){

                    // },
                    // style: ElevatedButton.styleFrom(
                    //   shape: const CircleBorder(),
                    //   backgroundColor: Colors.black,
                    //   // maximumSize: const Size(2, 2)
                    // ),
                    // child: const Icon(Icons.favorite_border_rounded,size: 20,))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
