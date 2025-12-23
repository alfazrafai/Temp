import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';
import '../store/coach_profile_store.dart';

class CoachSportSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachSportSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final sports = ['Padel', 'Table Tennis', 'Cricket'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        Text(
          'Select Sport',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),

        SizedBox(height: 12.h),

        Observer(
          builder: (_) => Row(
            children: List.generate(sports.length, (index) {
              final isSelected = store.selectedSportIndex == index;

              return Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => store.changeSport(index),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      color: isSelected
                          ? AppColors.primaryGreen
                          : AppColors.cardLight,
                      border: Border.all(
                        color: isSelected ? Colors.transparent : Colors.white24,
                      ),
                    ),
                    child: Text(
                      sports[index],
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: isSelected ? Colors.black : AppColors.textWhite,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
