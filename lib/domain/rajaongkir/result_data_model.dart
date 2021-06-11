import 'package:freezed_annotation/freezed_annotation.dart';

import 'costs.dart';

part 'result_data_model.freezed.dart';
part 'result_data_model.g.dart';

@freezed
class ResultDataModel with _$ResultDataModel {
  factory ResultDataModel({
    @Default('') String code,
    @Default('') String name,
    @Default([]) List<Costs> costs,
  }) = _ResultDataModel;

  factory ResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$ResultDataModelFromJson(json);
}
