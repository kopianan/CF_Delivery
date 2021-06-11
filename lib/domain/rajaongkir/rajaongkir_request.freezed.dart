// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rajaongkir_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RajaongkirRequest _$RajaongkirRequestFromJson(Map<String, dynamic> json) {
  return _RajaongkirRequest.fromJson(json);
}

/// @nodoc
class _$RajaongkirRequestTearOff {
  const _$RajaongkirRequestTearOff();

  _RajaongkirRequest call(
      {String origin = "",
      String destination = "",
      String courier = "",
      int weight = 0}) {
    return _RajaongkirRequest(
      origin: origin,
      destination: destination,
      courier: courier,
      weight: weight,
    );
  }

  RajaongkirRequest fromJson(Map<String, Object> json) {
    return RajaongkirRequest.fromJson(json);
  }
}

/// @nodoc
const $RajaongkirRequest = _$RajaongkirRequestTearOff();

/// @nodoc
mixin _$RajaongkirRequest {
  String get origin => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get courier => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RajaongkirRequestCopyWith<RajaongkirRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RajaongkirRequestCopyWith<$Res> {
  factory $RajaongkirRequestCopyWith(
          RajaongkirRequest value, $Res Function(RajaongkirRequest) then) =
      _$RajaongkirRequestCopyWithImpl<$Res>;
  $Res call({String origin, String destination, String courier, int weight});
}

/// @nodoc
class _$RajaongkirRequestCopyWithImpl<$Res>
    implements $RajaongkirRequestCopyWith<$Res> {
  _$RajaongkirRequestCopyWithImpl(this._value, this._then);

  final RajaongkirRequest _value;
  // ignore: unused_field
  final $Res Function(RajaongkirRequest) _then;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? courier = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RajaongkirRequestCopyWith<$Res>
    implements $RajaongkirRequestCopyWith<$Res> {
  factory _$RajaongkirRequestCopyWith(
          _RajaongkirRequest value, $Res Function(_RajaongkirRequest) then) =
      __$RajaongkirRequestCopyWithImpl<$Res>;
  @override
  $Res call({String origin, String destination, String courier, int weight});
}

/// @nodoc
class __$RajaongkirRequestCopyWithImpl<$Res>
    extends _$RajaongkirRequestCopyWithImpl<$Res>
    implements _$RajaongkirRequestCopyWith<$Res> {
  __$RajaongkirRequestCopyWithImpl(
      _RajaongkirRequest _value, $Res Function(_RajaongkirRequest) _then)
      : super(_value, (v) => _then(v as _RajaongkirRequest));

  @override
  _RajaongkirRequest get _value => super._value as _RajaongkirRequest;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? courier = freezed,
    Object? weight = freezed,
  }) {
    return _then(_RajaongkirRequest(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RajaongkirRequest implements _RajaongkirRequest {
  _$_RajaongkirRequest(
      {this.origin = "",
      this.destination = "",
      this.courier = "",
      this.weight = 0});

  factory _$_RajaongkirRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_RajaongkirRequestFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String origin;
  @JsonKey(defaultValue: "")
  @override
  final String destination;
  @JsonKey(defaultValue: "")
  @override
  final String courier;
  @JsonKey(defaultValue: 0)
  @override
  final int weight;

  @override
  String toString() {
    return 'RajaongkirRequest(origin: $origin, destination: $destination, courier: $courier, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RajaongkirRequest &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.courier, courier) ||
                const DeepCollectionEquality()
                    .equals(other.courier, courier)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(courier) ^
      const DeepCollectionEquality().hash(weight);

  @JsonKey(ignore: true)
  @override
  _$RajaongkirRequestCopyWith<_RajaongkirRequest> get copyWith =>
      __$RajaongkirRequestCopyWithImpl<_RajaongkirRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RajaongkirRequestToJson(this);
  }
}

abstract class _RajaongkirRequest implements RajaongkirRequest {
  factory _RajaongkirRequest(
      {String origin,
      String destination,
      String courier,
      int weight}) = _$_RajaongkirRequest;

  factory _RajaongkirRequest.fromJson(Map<String, dynamic> json) =
      _$_RajaongkirRequest.fromJson;

  @override
  String get origin => throw _privateConstructorUsedError;
  @override
  String get destination => throw _privateConstructorUsedError;
  @override
  String get courier => throw _privateConstructorUsedError;
  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RajaongkirRequestCopyWith<_RajaongkirRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
