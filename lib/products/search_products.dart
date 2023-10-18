import 'package:flutter/material.dart';
import 'package:pshop/data/domain/requests.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  final AppRequest _appRequest = AppRequest();
  
  void _filterresults() {
    _appRequest.getShopPlants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search Products",
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
        actions: [
          
            ElevatedButton(onPressed: (){
// TODO: show profile actions or navigate to profile page
            }, 
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder()
            ),
            child: const Icon(Icons.person_2_rounded),
            )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  // width: MediaQuery.of(context).size.width/3,
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Search Input",
                      labelStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.all(8.0),
                      icon: Icon(Icons.search)
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      _filterresults();
                    },
                    icon: const Icon(Icons.tune))
              ],
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
