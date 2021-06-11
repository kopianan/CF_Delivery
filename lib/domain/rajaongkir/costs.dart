import 'package:freezed_annotation/freezed_annotation.dart';

import 'cost.dart';

part 'costs.freezed.dart';
part 'costs.g.dart';

@freezed
class Costs with _$Costs {
  factory Costs({
    @Default('') String service,
    @Default('') String description,
    @Default([]) List<Cost> cost,
  }) = _Costs;

  factory Costs.fromJson(Map<String, dynamic> json) => _$CostsFromJson(json);
}
