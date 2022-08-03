import 'package:estudando_getconect/infra/models/response/adress_response_model.dart';
import 'package:get/get.dart';

import '../api_endpoints.dart';

class AdressRepository {
  final GetConnect _connect;
  const AdressRepository(this._connect);

  Future<AdressResponseModel> getAdress(String zipCode) async {
    final _response = await _connect.get(ApiEndpoints.adress + zipCode);
    if (_response.isOk) {
      return AdressResponseModel.fromMap(_response.body);
    }
    return throw Exception('Nao foi possivel buscar o endereço');
  }
}
