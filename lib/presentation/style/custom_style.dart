// Color Pallets
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color Pallets
const Color primaryColor = Color(0xFF232931);
const Color secondaryColor = Color(0xFF0CE149);
const Color tertiaryColor = Color(0xFFFFFFFF);
const Color quaternaryColor = Color(0xFF393E46);

// Text Styles
final TextStyle poppins1 = GoogleFonts.poppins(
  color: tertiaryColor,
  fontSize: 24,
);

final TextStyle poppins2 = GoogleFonts.poppins(
  color: tertiaryColor,
  fontSize: 20,
);

final TextStyle poppins3 = GoogleFonts.poppins(
  color: tertiaryColor,
  fontSize: 16,
);

final TextStyle poppins4 = GoogleFonts.poppins(
  color: tertiaryColor,
  fontSize: 14,
);

final TextStyle poppins5 = GoogleFonts.poppins(
  color: tertiaryColor,
  fontSize: 12,
);

// Custom Theme
final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: primaryColor,
  primaryColor: primaryColor,
);
