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

// class PlanComponent {
//   String imageLink = "";
//   double rate = 0;
//   String place = "";
// }

// List<PlanComponent> PlanComponentList = [
//   PlanComponent()
//     ..imageLink =
//         'https://th.bing.com/th/id/OIP._AHsF98ncb9d1coV8IjdbwHaE8?w=271&h=181&c=7&r=0&o=5&dpr=2&pid=1.7'
//     ..rate = 3.3
//     ..place = "山梨",
//   PlanComponent()
//     ..imageLink =
//         'https://th.bing.com/th/id/OIP._AHsF98ncb9d1coV8IjdbwHaE8?w=271&h=181&c=7&r=0&o=5&dpr=2&pid=1.7'
//     ..rate = 3.3
//     ..place = "茨城",
//   PlanComponent()
//     ..imageLink =
//         'https://th.bing.com/th/id/OIP._AHsF98ncb9d1coV8IjdbwHaE8?w=271&h=181&c=7&r=0&o=5&dpr=2&pid=1.7'
//     ..rate = 3.3
//     ..place = "福岡",
//   PlanComponent()
//     ..imageLink =
//         'https://th.bing.com/th/id/OIP._AHsF98ncb9d1coV8IjdbwHaE8?w=271&h=181&c=7&r=0&o=5&dpr=2&pid=1.7'
//     ..rate = 3.3
//     ..place = "北海道",
// ];

// Map<String, PlanComponent> Plan = {
//   '中部': PlanComponentList[0],
//   '関東': PlanComponentList[1],
//   '九州': PlanComponentList[2],
//   '北海道': PlanComponentList[3],
// };
