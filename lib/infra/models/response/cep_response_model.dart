import 'dart:convert';

class CepResponseModel {
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
  CepResponseModel({
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

  CepResponseModel copyWith({
    int? id,
    String? zipCode,
    String? neighborhood,
    int? cityId,
    int? stateId,
    int? countryId,
    String? latitude,
    String? longitude,
    City? city,
    State? state,
    Country? country,
  }) {
    return CepResponseModel(
      id: id ?? this.id,
      zipCode: zipCode ?? this.zipCode,
      neighborhood: neighborhood ?? this.neighborhood,
      cityId: cityId ?? this.cityId,
      stateId: stateId ?? this.stateId,
      countryId: countryId ?? this.countryId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
    );
  }

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

  factory CepResponseModel.fromMap(Map<String, dynamic> map) {
    return CepResponseModel(
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

  factory CepResponseModel.fromJson(String source) =>
      CepResponseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CepResponseModel(id: $id, zipCode: $zipCode, neighborhood: $neighborhood, cityId: $cityId, stateId: $stateId, countryId: $countryId, latitude: $latitude, longitude: $longitude, city: $city, state: $state, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CepResponseModel &&
        other.id == id &&
        other.zipCode == zipCode &&
        other.neighborhood == neighborhood &&
        other.cityId == cityId &&
        other.stateId == stateId &&
        other.countryId == countryId &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.city == city &&
        other.state == state &&
        other.country == country;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        zipCode.hashCode ^
        neighborhood.hashCode ^
        cityId.hashCode ^
        stateId.hashCode ^
        countryId.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        city.hashCode ^
        state.hashCode ^
        country.hashCode;
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

  City copyWith({
    int? id,
    String? name,
    int? stateId,
    String? createdAt,
    String? updatedAt,
  }) {
    return City(
      id: id ?? this.id,
      name: name ?? this.name,
      stateId: stateId ?? this.stateId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is City &&
        other.id == id &&
        other.name == name &&
        other.stateId == stateId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        stateId.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
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

  State copyWith({
    int? id,
    String? name,
    String? uf,
    int? countryId,
    String? createdAt,
    String? updatedAt,
  }) {
    return State(
      id: id ?? this.id,
      name: name ?? this.name,
      uf: uf ?? this.uf,
      countryId: countryId ?? this.countryId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is State &&
        other.id == id &&
        other.name == name &&
        other.uf == uf &&
        other.countryId == countryId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        uf.hashCode ^
        countryId.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
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

  Country copyWith({
    int? id,
    String? name,
    String? currency,
    String? abbreviation,
    String? createdAt,
    String? updatedAt,
  }) {
    return Country(
      id: id ?? this.id,
      name: name ?? this.name,
      currency: currency ?? this.currency,
      abbreviation: abbreviation ?? this.abbreviation,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

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

  factory Country.fromJson(String source) =>
      Country.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Country(id: $id, name: $name, currency: $currency, abbreviation: $abbreviation, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Country &&
        other.id == id &&
        other.name == name &&
        other.currency == currency &&
        other.abbreviation == abbreviation &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        currency.hashCode ^
        abbreviation.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
