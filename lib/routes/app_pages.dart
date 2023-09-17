import 'package:alquran/routes/route_name.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/countB.dart';
import '../modules/home/controllers/home_controller.dart';
import '../modules/home/pages/count.dart';
import '../modules/home/pages/home.dart';


final HomeController controller = Get.find<HomeController>();

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.HomePage,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.count,
      page: () => CountPage(),
      binding: CountB(),
    ),

  ];
}