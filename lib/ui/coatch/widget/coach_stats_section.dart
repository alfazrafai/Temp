import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../value/app_colors.dart';

class CoachStatsSection extends StatelessWidget {
  const CoachStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            _StatItem(value: '1234', label: 'Followers'),
            _StatItem(value: '1234', label: 'Students'),
            _StatItem(value: '1234', label: 'AED/hr'),
          ],
        ),

        SizedBox(height: 18.h),

        Row(
          children: [
            Expanded(child: _ActionButton(text: 'Follow', isPrimary: false)),
            SizedBox(width: 12.w),
            Expanded(child: _ActionButton(text: 'Message', isPrimary: true)),
          ],
        ),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(fontSize: 12.sp, color: AppColors.textMuted),
        ),
      ],
    );
  }
}

/// ---------- ACTION BUTTON ----------
class _ActionButton extends StatelessWidget {
  final String text;
  final bool isPrimary;

  const _ActionButton({required this.text, required this.isPrimary});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: isPrimary ? AppColors.cardLight : Colors.transparent,
        border: Border.all(color: AppColors.primaryGreen),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: isPrimary ? AppColors.textWhite : AppColors.primaryGreen,
        ),
      ),
    );
  }
}
