import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile/components/appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/components/bottom_nav.dart';
import 'package:mobile/components/photo_card_view.dart';
import 'package:mobile/components/plan_card.dart';
import 'package:mobile/models/plan.dart';

final tmpPlanList = [
  Plan(
    region: '関東',
    imageLink:
        'https://th.bing.com/th/id/OIP._AHsF98ncb9d1coV8IjdbwHaE8?w=271&h=181&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 3.7,
    place: '山梨',
  ),
  Plan(
    region: '関東',
    imageLink:
        'https://th.bing.com/th/id/OIP.VtGnr8VP_6g6c011HNf_qQHaE6?w=276&h=183&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '茨城',
  ),
  Plan(
    region: '中部',
    imageLink:
        'https://th.bing.com/th/id/OIP.O6Ohr-lE2Q-YVSR0M4FdyQHaE8?w=276&h=184&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '福井',
  ),
  Plan(
    region: '中部',
    imageLink:
        'https://th.bing.com/th/id/OIP.Uy186VHVzZ-nQHZlDVlnsgHaFC?w=225&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '富山',
  ),
  Plan(
    region: '東北',
    imageLink:
        'https://th.bing.com/th/id/OIP.BwL9KIEzwBaJ3tunhSr4FQHaE6?w=256&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '秋田',
  ),
  Plan(
    region: '東北',
    imageLink:
        'https://th.bing.com/th/id/OIP.184VB6X7MReoB1Bc_kVsnAHaE7?w=243&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '山形',
  ),
  Plan(
    region: '近畿',
    imageLink:
        'https://th.bing.com/th/id/OIP.Lfd-cq3GX63bs0DcuWk0zQHaEL?w=279&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '三重',
  ),
  Plan(
    region: '近畿',
    imageLink:
        'https://th.bing.com/th/id/OIP.AyLckpsV2k24pLQSnOlnIAHaE7?w=300&h=200&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '滋賀',
  ),
  Plan(
    region: '中国',
    imageLink:
        'https://th.bing.com/th/id/OIP.h_p6JZ61or_JfcUgMPtWiwHaE8?w=292&h=194&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '鳥取',
  ),
  Plan(
    region: '中国',
    imageLink:
        'https://th.bing.com/th/id/OIP.ENEogxF1tnX0FWUiBNCTKQHaE6?w=200&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '島根',
  ),
  Plan(
    region: '四国',
    imageLink:
        'https://th.bing.com/th/id/OIP.8PIEGe9uLEtk_BnXKev1jgHaE7?w=275&h=183&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '徳島',
  ),
  Plan(
    region: '四国',
    imageLink:
        'https://th.bing.com/th/id/OIP.hHkaoa_v_uuR-wutzOoWFQHaFj?w=263&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '高知',
  ),
  Plan(
    region: '九州',
    imageLink:
        'https://th.bing.com/th/id/OIP.ARnNjm-FuHWfvS2OpfKv9wHaE7?w=245&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '佐賀',
  ),
  Plan(
    region: '九州',
    imageLink:
        'https://th.bing.com/th/id/OIP.T5n6vNzJ06iK6rjNG-Y_NQHaEK?w=313&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    rate: 4.4,
    place: '宮崎',
  ),
];

enum regionLabel {
  KT('関東'),
  KS('近畿'),
  HK('北海道'),
  SS('中部'),
  TG('中国'),
  TK('東北'),
  KSY('九州');

  final String label;
  const regionLabel(this.label);
}

class HomePage extends HookWidget {
  final String? imageLink;

  HomePage({
    super.key,
    this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController regionController = TextEditingController();
    final filteredPlanListState = useState(<Plan>[]);
    final regionState = useState("地域");

    void fillterPlanByRegion(String region) {
      filteredPlanListState.value = tmpPlanList
          .where((element) => element.region == regionState.value)
          .toList();
    }

    return Scaffold(
      appBar: const CustomAppBar(
        backButton: false,
        title: '旅するネコ',
        imageLink: null,
      ),
      bottomNavigationBar: BottomNav(),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'ここに行ってみない？',
                style: GoogleFonts.anton(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
          ),
          PhotoCards(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "   地域を選択してください    ",
                    style: GoogleFonts.ubuntu(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  DropdownMenu(
                    controller: regionController,
                    enableFilter: true,
                    requestFocusOnTap: false,
                    label: Text(regionState.value.toString()),
                    textStyle: GoogleFonts.ubuntu(),
                    inputDecorationTheme: InputDecorationTheme(
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onSelected: (regionLabel? region) {
                      if (region == null) return;
                      fillterPlanByRegion(region.label);
                      regionState.value = region.label;
                    },
                    dropdownMenuEntries:
                        regionLabel.values.map<DropdownMenuEntry<regionLabel>>(
                      (regionLabel? region) {
                        return DropdownMenuEntry(
                          value: region!,
                          label: region.label,
                        );
                      },
                    ).toList(),
                  ),
                ],
              ),
            ),
          ),
          for (var plan in tmpPlanList)
            if (regionState.value == plan.region)
              Padding(
                padding: EdgeInsets.all(15),
                child: PlanCard(
                  imageLink: plan.imageLink,
                  rate: plan.rate,
                  place: plan.place,
                ),
              ),
        ],
      ),
    );
  }
}
