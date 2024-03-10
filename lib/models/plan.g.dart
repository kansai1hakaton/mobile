// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      region: json['region'] as String? ?? '',
      imageLink: json['imageLink'] as String? ?? '',
      rate: (json['rate'] as num?)?.toDouble() ?? 0.0,
      place: json['place'] as String? ?? '',
    );

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) =>
    <String, dynamic>{
      'region': instance.region,
      'imageLink': instance.imageLink,
      'rate': instance.rate,
      'place': instance.place,
    };
