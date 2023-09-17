import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/route_name.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(RouteName.count),
          child: Text("Next >>"),
        ),
      ),
    );
  }
}