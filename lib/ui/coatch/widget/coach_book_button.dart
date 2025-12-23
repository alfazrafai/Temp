import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';

class CoachBookSessionButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool enabled;

  const CoachBookSessionButton({
    super.key,
    required this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
        child: GestureDetector(
          onTap: enabled ? onTap : null,
          child: Container(
            height: 54.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: enabled
                  ? AppColors.primaryGreen
                  : AppColors.primaryGreen.withOpacity(0.4),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Text(
              'Book Session',
              style: TextStyle(
                fontFamily: 'Myriadpro',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
