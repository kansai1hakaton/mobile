import 'package:flutter/material.dart';
import 'package:mobile/components/appbar.dart';
import 'package:mobile/components/photo_card_view.dart';
import 'package:mobile/components/plan_card.dart';

class Components extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60),
          child: PlanCard(
            context: context,
            imageLink:
                'https://th.bing.com/th/id/OIP.hvc-sD05MXlB1dEmd4Bh2AHaE8?w=261&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
            rate: 4.2,
            place: '東京~八王子~',
          ),
        ),
      ],
    );
  }
}
