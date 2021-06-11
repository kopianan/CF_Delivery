// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rajaongkir_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RajaongkirDataModel _$RajaongkirDataModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return RCity.fromJson(json);
    case 'province':
      return RProvince.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$RajaongkirDataModelTearOff {
  const _$RajaongkirDataModelTearOff();

  RCity call(
      {@JsonKey(name: 'city_id') String cityId = '',
      @JsonKey(name: 'province_id') String provinceId = '',
      @JsonKey(name: 'province') String province = '',
      @JsonKey(name: 'type') String type = '',
      @JsonKey(name: 'city_name') String cityName = '',
      @JsonKey(name: 'postal_code') String postalCode = ''}) {
    return RCity(
      cityId: cityId,
      provinceId: provinceId,
      province: province,
      type: type,
      cityName: cityName,
      postalCode: postalCode,
    );
  }

  RProvince province(
      {@JsonKey(name: 'province_id') String provinceId = '',
      @JsonKey(name: 'province') String province = ''}) {
    return RProvince(
      provinceId: provinceId,
      province: province,
    );
  }

  RajaongkirDataModel fromJson(Map<String, Object> json) {
    return RajaongkirDataModel.fromJson(json);
  }
}

/// @nodoc
const $RajaongkirDataModel = _$RajaongkirDataModelTearOff();

/// @nodoc
mixin _$RajaongkirDataModel {
  @JsonKey(name: 'province_id')
  String get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'province')
  String get province => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'city_id') String cityId,
            @JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'city_name') String cityName,
            @JsonKey(name: 'postal_code') String postalCode)
        $default, {
    required TResult Function(@JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province)
        province,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'city_id') String cityId,
            @JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'city_name') String cityName,
            @JsonKey(name: 'postal_code') String postalCode)?
        $default, {
    TResult Function(@JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province)?
        province,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RCity value) $default, {
    required TResult Function(RProvince value) province,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RCity value)? $default, {
    TResult Function(RProvince value)? province,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RajaongkirDataModelCopyWith<RajaongkirDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RajaongkirDataModelCopyWith<$Res> {
  factory $RajaongkirDataModelCopyWith(
          RajaongkirDataModel value, $Res Function(RajaongkirDataModel) then) =
      _$RajaongkirDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province});
}

/// @nodoc
class _$RajaongkirDataModelCopyWithImpl<$Res>
    implements $RajaongkirDataModelCopyWith<$Res> {
  _$RajaongkirDataModelCopyWithImpl(this._value, this._then);

  final RajaongkirDataModel _value;
  // ignore: unused_field
  final $Res Function(RajaongkirDataModel) _then;

  @override
  $Res call({
    Object? provinceId = freezed,
    Object? province = freezed,
  }) {
    return _then(_value.copyWith(
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $RCityCopyWith<$Res>
    implements $RajaongkirDataModelCopyWith<$Res> {
  factory $RCityCopyWith(RCity value, $Res Function(RCity) then) =
      _$RCityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'postal_code') String postalCode});
}

/// @nodoc
class _$RCityCopyWithImpl<$Res> extends _$RajaongkirDataModelCopyWithImpl<$Res>
    implements $RCityCopyWith<$Res> {
  _$RCityCopyWithImpl(RCity _value, $Res Function(RCity) _then)
      : super(_value, (v) => _then(v as RCity));

  @override
  RCity get _value => super._value as RCity;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? provinceId = freezed,
    Object? province = freezed,
    Object? type = freezed,
    Object? cityName = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(RCity(
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RCity implements RCity {
  const _$RCity(
      {@JsonKey(name: 'city_id') this.cityId = '',
      @JsonKey(name: 'province_id') this.provinceId = '',
      @JsonKey(name: 'province') this.province = '',
      @JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'city_name') this.cityName = '',
      @JsonKey(name: 'postal_code') this.postalCode = ''});

  factory _$RCity.fromJson(Map<String, dynamic> json) =>
      _$_$RCityFromJson(json);

  @override
  @JsonKey(name: 'city_id')
  final String cityId;
  @override
  @JsonKey(name: 'province_id')
  final String provinceId;
  @override
  @JsonKey(name: 'province')
  final String province;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'city_name')
  final String cityName;
  @override
  @JsonKey(name: 'postal_code')
  final String postalCode;

  @override
  String toString() {
    return 'RajaongkirDataModel(cityId: $cityId, provinceId: $provinceId, province: $province, type: $type, cityName: $cityName, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RCity &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(cityName) ^
      const DeepCollectionEquality().hash(postalCode);

  @JsonKey(ignore: true)
  @override
  $RCityCopyWith<RCity> get copyWith =>
      _$RCityCopyWithImpl<RCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'city_id') String cityId,
            @JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'city_name') String cityName,
            @JsonKey(name: 'postal_code') String postalCode)
        $default, {
    required TResult Function(@JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province)
        province,
  }) {
    return $default(
        cityId, provinceId, this.province, type, cityName, postalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'city_id') String cityId,
            @JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'city_name') String cityName,
            @JsonKey(name: 'postal_code') String postalCode)?
        $default, {
    TResult Function(@JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province)?
        province,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          cityId, provinceId, this.province, type, cityName, postalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RCity value) $default, {
    required TResult Function(RProvince value) province,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RCity value)? $default, {
    TResult Function(RProvince value)? province,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RCityToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class RCity implements RajaongkirDataModel {
  const factory RCity(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'city_name') String cityName,
      @JsonKey(name: 'postal_code') String postalCode}) = _$RCity;

  factory RCity.fromJson(Map<String, dynamic> json) = _$RCity.fromJson;

  @JsonKey(name: 'city_id')
  String get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'province_id')
  String get provinceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'province')
  String get province => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_name')
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String get postalCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RCityCopyWith<RCity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RProvinceCopyWith<$Res>
    implements $RajaongkirDataModelCopyWith<$Res> {
  factory $RProvinceCopyWith(RProvince value, $Res Function(RProvince) then) =
      _$RProvinceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province});
}

/// @nodoc
class _$RProvinceCopyWithImpl<$Res>
    extends _$RajaongkirDataModelCopyWithImpl<$Res>
    implements $RProvinceCopyWith<$Res> {
  _$RProvinceCopyWithImpl(RProvince _value, $Res Function(RProvince) _then)
      : super(_value, (v) => _then(v as RProvince));

  @override
  RProvince get _value => super._value as RProvince;

  @override
  $Res call({
    Object? provinceId = freezed,
    Object? province = freezed,
  }) {
    return _then(RProvince(
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RProvince implements RProvince {
  const _$RProvince(
      {@JsonKey(name: 'province_id') this.provinceId = '',
      @JsonKey(name: 'province') this.province = ''});

  factory _$RProvince.fromJson(Map<String, dynamic> json) =>
      _$_$RProvinceFromJson(json);

  @override
  @JsonKey(name: 'province_id')
  final String provinceId;
  @override
  @JsonKey(name: 'province')
  final String province;

  @override
  String toString() {
    return 'RajaongkirDataModel.province(provinceId: $provinceId, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RProvince &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(province);

  @JsonKey(ignore: true)
  @override
  $RProvinceCopyWith<RProvince> get copyWith =>
      _$RProvinceCopyWithImpl<RProvince>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'city_id') String cityId,
            @JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'city_name') String cityName,
            @JsonKey(name: 'postal_code') String postalCode)
        $default, {
    required TResult Function(@JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province)
        province,
  }) {
    return province(provinceId, this.province);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'city_id') String cityId,
            @JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'city_name') String cityName,
            @JsonKey(name: 'postal_code') String postalCode)?
        $default, {
    TResult Function(@JsonKey(name: 'province_id') String provinceId,
            @JsonKey(name: 'province') String province)?
        province,
    required TResult orElse(),
  }) {
    if (province != null) {
      return province(provinceId, this.province);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RCity value) $default, {
    required TResult Function(RProvince value) province,
  }) {
    return province(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RCity value)? $default, {
    TResult Function(RProvince value)? province,
    required TResult orElse(),
  }) {
    if (province != null) {
      return province(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RProvinceToJson(this)..['runtimeType'] = 'province';
  }
}

abstract class RProvince implements RajaongkirDataModel {
  const factory RProvince(
      {@JsonKey(name: 'province_id') String provinceId,
      @JsonKey(name: 'province') String province}) = _$RProvince;

  factory RProvince.fromJson(Map<String, dynamic> json) = _$RProvince.fromJson;

  @override
  @JsonKey(name: 'province_id')
  String get provinceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'province')
  String get province => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RProvinceCopyWith<RProvince> get copyWith =>
      throw _privateConstructorUsedError;
}
