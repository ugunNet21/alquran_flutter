

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:alquran/main.dart';

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }


import 'dart:convert';

import 'package:alquran/data/models/detail_surah.dart';
import 'package:alquran/data/models/surah.dart';
import 'package:http/http.dart' as http;

void main() async{
  Uri url= Uri.parse("https://api.quran.gading.dev/surah");
 var res = await http.get(url);

//  print(res.body); ambil data ke bentuk json

// ambil data maping , data sebuah list
List  data = (jsonDecode(res.body) as Map<String, dynamic>)["data"]; 
// ambil data surah ke 114
// print(data[113]);

// ambil data dari api ke -> bentuk model

Surah surahAnnas = Surah.fromJson(data[113]);
// print(data[113]["number"]);

// print (surahAnnas.name);
// print (surahAnnas.number);
// print (surahAnnas.numberOfVerses);
// print (surahAnnas.revelation);
// print (surahAnnas.tafsir);
// print (surahAnnas.toJson());
// print netseted
// print (surahAnnas.tafsir);

Uri urlAnnas = Uri.parse("https://api.quran.gading.dev/surah/${surahAnnas.number}");
var resAnnas = await http.get(urlAnnas);

// ubah dari string ke list
Map<String, dynamic> dataAnnas = (jsonDecode(resAnnas.body) as Map<String, dynamic>)["data"];
// print(dataAnnas);

// print(resAnnas.body);
// data dari model api ke model yang sudah disiapkan
DetailSurah annas = DetailSurah.fromJson(dataAnnas);

// cek surah
print(annas.verses![0].text!.arab);
}