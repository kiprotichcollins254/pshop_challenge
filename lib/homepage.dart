import 'package:flutter/material.dart';
import 'package:pshop/products/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pshop",style: TextStyle(fontSize: 15),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            // TODO CHANGE THE THEME TO DARK MODE
          },
          icon: const Icon(Icons.dark_mode),
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/search_products');
              },
              icon: const Icon(Icons.search)),
         
        ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: Column(
            children: [
              // const SizedBox(
              //   height: 10,
              // ),
              // const Text("Shop Products"),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: (1/1)
                    ),
                  // scrollDirection: Axis.horizontal,
                  children: [
                    for(var i = 0; i<=10;i++)...[
                         const ProductWidget(),
                    ]
                  ],
                ),
              ),
              
              // ProductWidget(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
