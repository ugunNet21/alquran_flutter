// import 'package:alquran/data/models/surah.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:alquran/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';



class HomePage extends GetView<HomeController> {
  const HomePage({super.key});
  // Get.put(HomeController());



  @override
  Widget build(BuildContext context) {
  // final foo = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        // future: controller.getAllSurah(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            print(snapshot);
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(!snapshot.hasData){
            return Center(
              child: Text("Tidak ada data"),
            );
          }
          print(snapshot.data);
          return ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),
                  title:const Text("Surah Al- ..."),
                  subtitle:const Text("7 Ayat | Mekah"),
                  trailing:const Text("Tulisan Arab"),
                )),
          );
        }
      ),
    );
  }
}

        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: const Text('Go back!'),
        // ),