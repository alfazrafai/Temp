import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';
import '../store/coach_profile_store.dart';

class CoachLevelSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachLevelSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final levels = ['1.0 - 2.5', '2.5 - 3.5', '3.5 - 5.5'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        Text(
          'Select level of coaching',
          style: TextStyle(
            fontFamily: 'Myriadpro',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),

        SizedBox(height: 14.h),

        Observer(
          builder: (_) => Wrap(
            spacing: 12.w,
            runSpacing: 12.h,
            children: List.generate(levels.length, (index) {
              final isSelected = store.selectedLevelIndex == index;

              return GestureDetector(
                onTap: () => store.changeLevel(index),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                    vertical: 10.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primaryGreen
                          : Colors.white54,
                      width: 1.2,
                    ),
                  ),
                  child: Text(
                    levels[index],
                    style: TextStyle(
                      fontFamily: 'Myriadpro',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? AppColors.primaryGreen
                          : AppColors.textWhite,
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
