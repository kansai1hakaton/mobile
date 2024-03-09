import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
class Plan with _$Plan {
  const factory Plan({
    @Default('') String region,
    @Default('') String imageLink,
    @Default(0.0) double rate,
    @Default('') String place,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
