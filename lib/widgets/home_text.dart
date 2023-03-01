import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class HomeText extends StatelessWidget {
  const HomeText({
    super.key,
    required this.text_title,
  });
  final String text_title;
  @override
  Widget build(BuildContext context) {
    return Text(
      text_title,
      style: GoogleFonts.poppins(
        color: text,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
