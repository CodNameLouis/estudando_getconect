import 'package:estudando_getconect/presenter/home/home_page.dart';
import 'package:get/get.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(buildGetConnet());
  }

  GetConnect buildGetConnet() {
    final _connect = GetConnect();

    _connect.httpClient.addResponseModifier((request, response) {
      if (response.unauthorized) {
        Future.delayed(const Duration(seconds: 1));
        Get.offAllNamed(HomePage.route);
      }
      return response;
    });
    return _connect;
  }
}
