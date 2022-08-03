import 'package:estudando_getconect/infra/api_endpoints.dart';
import 'package:get/get.dart';

import '../models/response/cep_response_model.dart';

class CepRepository {
  final GetConnect connect;

  CepRepository(this.connect);
  Future<CepResponseModel> getCep() async {
    final response = await connect.get(ApiEndpoints.adress);
    if (response.isOk) {
      return CepResponseModel.fromMap(response.body);
    }
    return throw Exception("Não encontrado");
  }
}
