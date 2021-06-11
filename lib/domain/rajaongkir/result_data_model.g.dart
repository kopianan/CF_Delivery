// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultDataModel _$_$_ResultDataModelFromJson(Map<String, dynamic> json) {
  return _$_ResultDataModel(
    code: json['code'] as String? ?? '',
    name: json['name'] as String? ?? '',
    costs: (json['costs'] as List<dynamic>?)
            ?.map((e) => Costs.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_ResultDataModelToJson(_$_ResultDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'costs': instance.costs,
    };
