import 'dart:convert';

class AdressResponseModel {
  final int id;
  final String zipCode;
  final String neighborhood;
  final int cityId;
  final int stateId;
  final int countryId;
  final String latitude;
  final String longitude;
  final City city;
  final State state;
  final Country country;
  AdressResponseModel({
    required this.id,
    required this.zipCode,
    required this.neighborhood,
    required this.cityId,
    required this.stateId,
    required this.countryId,
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.state,
    required this.country,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'zipCode': zipCode});
    result.addAll({'neighborhood': neighborhood});
    result.addAll({'cityId': cityId});
    result.addAll({'stateId': stateId});
    result.addAll({'countryId': countryId});
    result.addAll({'latitude': latitude});
    result.addAll({'longitude': longitude});
    result.addAll({'city': city.toMap()});
    result.addAll({'state': state.toMap()});
    result.addAll({'country': country.toMap()});
  
    return result;
  }

  factory AdressResponseModel.fromMap(Map<String, dynamic> map) {
    return AdressResponseModel(
      id: map['id']?.toInt() ?? 0,
      zipCode: map['zipCode'] ?? '',
      neighborhood: map['neighborhood'] ?? '',
      cityId: map['cityId']?.toInt() ?? 0,
      stateId: map['stateId']?.toInt() ?? 0,
      countryId: map['countryId']?.toInt() ?? 0,
      latitude: map['latitude'] ?? '',
      longitude: map['longitude'] ?? '',
      city: City.fromMap(map['city']),
      state: State.fromMap(map['state']),
      country: Country.fromMap(map['country']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AdressResponseModel.fromJson(String source) => AdressResponseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AdressResponseModel(id: $id, zipCode: $zipCode, neighborhood: $neighborhood, cityId: $cityId, stateId: $stateId, countryId: $countryId, latitude: $latitude, longitude: $longitude, city: $city, state: $state, country: $country)';
  }
}

class City {
  final int id;
  final String name;
  final int stateId;
  final String createdAt;
  final String updatedAt;
  City({
    required this.id,
    required this.name,
    required this.stateId,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'stateId': stateId});
    result.addAll({'createdAt': createdAt});
    result.addAll({'updatedAt': updatedAt});
  
    return result;
  }

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      stateId: map['stateId']?.toInt() ?? 0,
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory City.fromJson(String source) => City.fromMap(json.decode(source));

  @override
  String toString() {
    return 'City(id: $id, name: $name, stateId: $stateId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

class State {
  final int id;
  final String name;
  final String uf;
  final int countryId;
  final String createdAt;
  final String updatedAt;
  State({
    required this.id,
    required this.name,
    required this.uf,
    required this.countryId,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'uf': uf});
    result.addAll({'countryId': countryId});
    result.addAll({'createdAt': createdAt});
    result.addAll({'updatedAt': updatedAt});
  
    return result;
  }

  factory State.fromMap(Map<String, dynamic> map) {
    return State(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      uf: map['uf'] ?? '',
      countryId: map['countryId']?.toInt() ?? 0,
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory State.fromJson(String source) => State.fromMap(json.decode(source));

  @override
  String toString() {
    return 'State(id: $id, name: $name, uf: $uf, countryId: $countryId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

class Country {
  final int id;
  final String name;
  final String currency;
  final String abbreviation;
  final String createdAt;
  final String updatedAt;
  Country({
    required this.id,
    required this.name,
    required this.currency,
    required this.abbreviation,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'currency': currency});
    result.addAll({'abbreviation': abbreviation});
    result.addAll({'createdAt': createdAt});
    result.addAll({'updatedAt': updatedAt});
  
    return result;
  }

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      currency: map['currency'] ?? '',
      abbreviation: map['abbreviation'] ?? '',
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Country.fromJson(String source) => Country.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Country(id: $id, name: $name, currency: $currency, abbreviation: $abbreviation, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}