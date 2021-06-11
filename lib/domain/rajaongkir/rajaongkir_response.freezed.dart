// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rajaongkir_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RajaongkirResponse _$RajaongkirResponseFromJson(Map<String, dynamic> json) {
  return _RajaongkirResponse.fromJson(json);
}

/// @nodoc
class _$RajaongkirResponseTearOff {
  const _$RajaongkirResponseTearOff();

  _RajaongkirResponse call(
      {@JsonKey(name: 'origin_details') RCity? originDetails,
      @JsonKey(name: 'destination_details') RCity? destinationDetails,
      List<ResultDataModel>? results}) {
    return _RajaongkirResponse(
      originDetails: originDetails,
      destinationDetails: destinationDetails,
      results: results,
    );
  }

  RajaongkirResponse fromJson(Map<String, Object> json) {
    return RajaongkirResponse.fromJson(json);
  }
}

/// @nodoc
const $RajaongkirResponse = _$RajaongkirResponseTearOff();

/// @nodoc
mixin _$RajaongkirResponse {
  @JsonKey(name: 'origin_details')
  RCity? get originDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_details')
  RCity? get destinationDetails => throw _privateConstructorUsedError;
  List<ResultDataModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RajaongkirResponseCopyWith<RajaongkirResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RajaongkirResponseCopyWith<$Res> {
  factory $RajaongkirResponseCopyWith(
          RajaongkirResponse value, $Res Function(RajaongkirResponse) then) =
      _$RajaongkirResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'origin_details') RCity? originDetails,
      @JsonKey(name: 'destination_details') RCity? destinationDetails,
      List<ResultDataModel>? results});
}

/// @nodoc
class _$RajaongkirResponseCopyWithImpl<$Res>
    implements $RajaongkirResponseCopyWith<$Res> {
  _$RajaongkirResponseCopyWithImpl(this._value, this._then);

  final RajaongkirResponse _value;
  // ignore: unused_field
  final $Res Function(RajaongkirResponse) _then;

  @override
  $Res call({
    Object? originDetails = freezed,
    Object? destinationDetails = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      originDetails: originDetails == freezed
          ? _value.originDetails
          : originDetails // ignore: cast_nullable_to_non_nullable
              as RCity?,
      destinationDetails: destinationDetails == freezed
          ? _value.destinationDetails
          : destinationDetails // ignore: cast_nullable_to_non_nullable
              as RCity?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultDataModel>?,
    ));
  }
}

/// @nodoc
abstract class _$RajaongkirResponseCopyWith<$Res>
    implements $RajaongkirResponseCopyWith<$Res> {
  factory _$RajaongkirResponseCopyWith(
          _RajaongkirResponse value, $Res Function(_RajaongkirResponse) then) =
      __$RajaongkirResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'origin_details') RCity? originDetails,
      @JsonKey(name: 'destination_details') RCity? destinationDetails,
      List<ResultDataModel>? results});
}

/// @nodoc
class __$RajaongkirResponseCopyWithImpl<$Res>
    extends _$RajaongkirResponseCopyWithImpl<$Res>
    implements _$RajaongkirResponseCopyWith<$Res> {
  __$RajaongkirResponseCopyWithImpl(
      _RajaongkirResponse _value, $Res Function(_RajaongkirResponse) _then)
      : super(_value, (v) => _then(v as _RajaongkirResponse));

  @override
  _RajaongkirResponse get _value => super._value as _RajaongkirResponse;

  @override
  $Res call({
    Object? originDetails = freezed,
    Object? destinationDetails = freezed,
    Object? results = freezed,
  }) {
    return _then(_RajaongkirResponse(
      originDetails: originDetails == freezed
          ? _value.originDetails
          : originDetails // ignore: cast_nullable_to_non_nullable
              as RCity?,
      destinationDetails: destinationDetails == freezed
          ? _value.destinationDetails
          : destinationDetails // ignore: cast_nullable_to_non_nullable
              as RCity?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RajaongkirResponse implements _RajaongkirResponse {
  _$_RajaongkirResponse(
      {@JsonKey(name: 'origin_details') this.originDetails,
      @JsonKey(name: 'destination_details') this.destinationDetails,
      this.results});

  factory _$_RajaongkirResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_RajaongkirResponseFromJson(json);

  @override
  @JsonKey(name: 'origin_details')
  final RCity? originDetails;
  @override
  @JsonKey(name: 'destination_details')
  final RCity? destinationDetails;
  @override
  final List<ResultDataModel>? results;

  @override
  String toString() {
    return 'RajaongkirResponse(originDetails: $originDetails, destinationDetails: $destinationDetails, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RajaongkirResponse &&
            (identical(other.originDetails, originDetails) ||
                const DeepCollectionEquality()
                    .equals(other.originDetails, originDetails)) &&
            (identical(other.destinationDetails, destinationDetails) ||
                const DeepCollectionEquality()
                    .equals(other.destinationDetails, destinationDetails)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(originDetails) ^
      const DeepCollectionEquality().hash(destinationDetails) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$RajaongkirResponseCopyWith<_RajaongkirResponse> get copyWith =>
      __$RajaongkirResponseCopyWithImpl<_RajaongkirResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RajaongkirResponseToJson(this);
  }
}

abstract class _RajaongkirResponse implements RajaongkirResponse {
  factory _RajaongkirResponse(
      {@JsonKey(name: 'origin_details') RCity? originDetails,
      @JsonKey(name: 'destination_details') RCity? destinationDetails,
      List<ResultDataModel>? results}) = _$_RajaongkirResponse;

  factory _RajaongkirResponse.fromJson(Map<String, dynamic> json) =
      _$_RajaongkirResponse.fromJson;

  @override
  @JsonKey(name: 'origin_details')
  RCity? get originDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'destination_details')
  RCity? get destinationDetails => throw _privateConstructorUsedError;
  @override
  List<ResultDataModel>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RajaongkirResponseCopyWith<_RajaongkirResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
