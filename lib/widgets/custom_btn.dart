import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';


class CustomBtn extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final Color? foregroundColor;
  const CustomBtn({
    required this.title,
    required this.onPressed,
    Key? key,
    this.color,
    this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            textStyle: GoogleFonts.inter(
                textStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: foregroundColor ?? Colors.white)),
            backgroundColor: color ?? AppColors.primary,
            padding: const EdgeInsets.all(14.5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
        child: Center(
            child: Text(
          title,
        )));
  }
}

class TodosBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const TodosBtn({Key? key, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35.w,
        height: 35.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: const Color.fromARGB(164, 169, 24, 226),
        ),
        child: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
