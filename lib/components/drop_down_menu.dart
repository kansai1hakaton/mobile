import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class CustomDropMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController regionController = TextEditingController();
    regionLabel? selectedRegion;
    return DropdownMenu(
      controller: regionController,
      enableFilter: true,
      requestFocusOnTap: false,
      label: Text('地域'),
      textStyle: GoogleFonts.montserrat(),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 15),
      ),
      onSelected: (regionLabel? region) {
        selectedRegion = region;
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
    );
  }
}
