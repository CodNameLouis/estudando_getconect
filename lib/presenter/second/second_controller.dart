import 'package:estudando_getconect/infra/models/response/cep_response_model.dart';
import 'package:estudando_getconect/infra/repositories/cep_repository.dart';
import 'package:get/get.dart';

class SecondController extends GetxController {
  final CepRepository _cepRepository;

  SecondController(this._cepRepository);

  @override
  Future<void> onInit() async {
    await getCep();
    super.onInit();
  }

  CepResponseModel? cep;

  Future getCep() async {
    _changeIsLoading(true);

    try {
      cep = await _cepRepository.getCep();
    } catch (e) {
      Get.rawSnackbar(
        title: "Não encontrado",
        message: "$e",
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
