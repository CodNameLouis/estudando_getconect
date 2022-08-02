import 'package:get/get.dart';
import './second_controller.dart';

class SecondBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SecondController());
    }
}