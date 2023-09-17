import 'dart:convert';
import 'package:alquran/data/models/surah.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class HomeController extends GetxController {

  Future<List<Surah>> getAllSurah() async {
    Uri url = Uri.parse("https://api.quran.gading.dev/surah");
    var res = await http.get(url);
    
    List? data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

    // jika datanya kosong maka tampilkan kembali ke bentul list
    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => Surah.fromJson(e)).toList();
    }

    
    // print(data);
  }
  
}
