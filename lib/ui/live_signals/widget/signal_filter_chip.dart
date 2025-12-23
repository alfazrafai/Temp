import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../value/app_colors.dart';

class SignalFilterChip extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const SignalFilterChip({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(25.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(25.r),
        onTap: onTap,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 80.w, minHeight: 35.h),
          child: Ink(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: isSelected ? AppColors.pGreen : null,
              gradient: isSelected
                  ? null
                  : const LinearGradient(
                      colors: [Color(0xFF3A3A3A), Color(0xFF1F1F1F)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
              border: Border.all(
                color: isSelected
                    ? Colors.transparent
                    : Colors.white.withOpacity(0.25),
              ),
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
