import 'package:pshop/models/plants.dart';
import 'package:pshop/utils/constants.dart';
import 'package:dio/dio.dart';

class AppRequest {
  final Dio _dio = Dio();

  final _baseUrl = "https://perenual.com/api";

  //TODO add fetch methods

  Future<Plants?> getShopPlants() async {
    Plants? plants;
    String plantKey = plantApiKey;
    try {
      Response usePlants =
          await _dio.get(_baseUrl + "/species-list?key=$plantKey&page=1");
      plants = usePlants.data;
     
    } catch (e) {
      print(e);
      // return
    }

     return plants;
  }
}
