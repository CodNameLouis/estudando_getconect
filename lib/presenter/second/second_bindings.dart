import 'package:estudando_getconect/infra/repositories/cep_repository.dart';
import 'package:get/get.dart';

import './second_controller.dart';

class SecondBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CepRepository(Get.find()));
    Get.put(SecondController(Get.find()));
  }
}
