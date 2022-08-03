import 'package:get/get.dart';

import '../../infra/models/response/adress_response_model.dart';
import '../../infra/repositories/adress_repository.dart';

class HomeController extends GetxController {
  final AdressRepository _userRepository;

  HomeController(this._userRepository);

  // @override
  // Future<void> onInit() async {
  //   await getInfo();
  //   super.onInit();
  // }

  String zipCode = '';
  void changeCep(String value) => zipCode = value;

  AdressResponseModel? adress;

  Future getInfo() async {
    _changeIsLoading(true);

    try {
      adress = await _userRepository.getAdress(zipCode);
    } catch (e) {
      Get.rawSnackbar(
        title: 'Não foi possível obter as informações',
        message: '$e',
      );
    }
    _changeIsLoading(false);
  }

  bool isLoading = false;
  void _changeIsLoading(bool value) {
    isLoading = value;
    update();
  }
}