import 'package:dev_quiz/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButton extends StatelessWidget {
  final String label;

  LevelButton({required this.label})
      : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label));

  Color get color => Utils.config[label]!['color']!;
  Color get borderColor => Utils.config[label]!['borderColor']!;
  Color get fontColor => Utils.config[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(BorderSide(color: borderColor)),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(color: fontColor, fontSize: 13),
        ),
      ),
    );
  }
}
