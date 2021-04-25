import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        border: Border.fromBorderSide(
            BorderSide(color: AppColors.levelButtonBorderFacil)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          "Fácil",
          style: GoogleFonts.notoSans(
            color: AppColors.levelButtonTextFacil,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
