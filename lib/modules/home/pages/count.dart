import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/countC.dart';

class CountPage extends StatelessWidget {
  final countC = Get.find<CountC>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COUNT PAGE"),
      ),
      body: Center(
        child: Obx(
          () => Text(
            "${countC.count}",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countC.add(),
        child: Icon(Icons.add),
      ),
    );
  }
}