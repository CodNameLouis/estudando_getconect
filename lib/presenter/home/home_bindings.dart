import 'package:get/get.dart';

import './home_controller.dart';
import '../../infra/repositories/adress_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdressRepository(Get.find()));
    Get.put(HomeController(Get.find()));
  }
}
