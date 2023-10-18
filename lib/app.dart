import 'package:flutter/material.dart';
import 'package:pshop/homepage.dart';
import 'package:pshop/products/product.dart';
import 'package:pshop/products/search_products.dart';
import 'package:pshop/utils/colors.dart';

class PshopMain extends StatefulWidget {
  const PshopMain({super.key});

  @override
  State<PshopMain> createState() => _PshopMainState();
}

class _PshopMainState extends State<PshopMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData(
        colorSchemeSeed: pshopprimarycolor,
        // colorScheme: ColorScheme(primary: pshopbgprimary),
        
        useMaterial3: true,
        
         
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(BuildContext context) => const HomePage() ,
        '/search_products':(BuildContext context) => const SearchProduct(),
        '/product':(BuildContext context) => const Product()
      },
    );
  }
}