import 'package:get/get.dart';

class CountC extends GetxController {
  var count = 0.obs;
  var HomePage = 0.obs;
  void add() => HomePage++;
}