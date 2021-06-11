// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultDataModel _$ResultDataModelFromJson(Map<String, dynamic> json) {
  return _ResultDataModel.fromJson(json);
}

/// @nodoc
class _$ResultDataModelTearOff {
  const _$ResultDataModelTearOff();

  _ResultDataModel call(
      {String code = '', String name = '', List<Costs> costs = const []}) {
    return _ResultDataModel(
      code: code,
      name: name,
      costs: costs,
    );
  }

  ResultDataModel fromJson(Map<String, Object> json) {
    return ResultDataModel.fromJson(json);
  }
}

/// @nodoc
const $ResultDataModel = _$ResultDataModelTearOff();

/// @nodoc
mixin _$ResultDataModel {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Costs> get costs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDataModelCopyWith<ResultDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataModelCopyWith<$Res> {
  factory $ResultDataModelCopyWith(
          ResultDataModel value, $Res Function(ResultDataModel) then) =
      _$ResultDataModelCopyWithImpl<$Res>;
  $Res call({String code, String name, List<Costs> costs});
}

/// @nodoc
class _$ResultDataModelCopyWithImpl<$Res>
    implements $ResultDataModelCopyWith<$Res> {
  _$ResultDataModelCopyWithImpl(this._value, this._then);

  final ResultDataModel _value;
  // ignore: unused_field
  final $Res Function(ResultDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? costs = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      costs: costs == freezed
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<Costs>,
    ));
  }
}

/// @nodoc
abstract class _$ResultDataModelCopyWith<$Res>
    implements $ResultDataModelCopyWith<$Res> {
  factory _$ResultDataModelCopyWith(
          _ResultDataModel value, $Res Function(_ResultDataModel) then) =
      __$ResultDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name, List<Costs> costs});
}

/// @nodoc
class __$ResultDataModelCopyWithImpl<$Res>
    extends _$ResultDataModelCopyWithImpl<$Res>
    implements _$ResultDataModelCopyWith<$Res> {
  __$ResultDataModelCopyWithImpl(
      _ResultDataModel _value, $Res Function(_ResultDataModel) _then)
      : super(_value, (v) => _then(v as _ResultDataModel));

  @override
  _ResultDataModel get _value => super._value as _ResultDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? costs = freezed,
  }) {
    return _then(_ResultDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      costs: costs == freezed
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<Costs>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultDataModel implements _ResultDataModel {
  _$_ResultDataModel({this.code = '', this.name = '', this.costs = const []});

  factory _$_ResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ResultDataModelFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String code;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<Costs> costs;

  @override
  String toString() {
    return 'ResultDataModel(code: $code, name: $name, costs: $costs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultDataModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.costs, costs) ||
                const DeepCollectionEquality().equals(other.costs, costs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(costs);

  @JsonKey(ignore: true)
  @override
  _$ResultDataModelCopyWith<_ResultDataModel> get copyWith =>
      __$ResultDataModelCopyWithImpl<_ResultDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResultDataModelToJson(this);
  }
}

abstract class _ResultDataModel implements ResultDataModel {
  factory _ResultDataModel({String code, String name, List<Costs> costs}) =
      _$_ResultDataModel;

  factory _ResultDataModel.fromJson(Map<String, dynamic> json) =
      _$_ResultDataModel.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<Costs> get costs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultDataModelCopyWith<_ResultDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
