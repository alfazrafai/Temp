import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/SportItem.dart';
import '../../../value/app_colors.dart';
import '../store/coach_profile_store.dart';

class CoachSportSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachSportSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final sports = [
      SportItem('Padel', Icons.sports_tennis),
      SportItem('Padel', Icons.sports_tennis),
      SportItem('Table Tennis', Icons.sports_tennis),
      SportItem('Cricket', Icons.sports_cricket),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        Text(
          'Select Sport',
          style: TextStyle(
            fontFamily: 'Myriadpro',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),

        SizedBox(height: 12.h),

        Observer(
          builder: (_) => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: List.generate(sports.length, (index) {
                final isSelected = store.selectedSportIndex == index;

                return Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: GestureDetector(
                    onTap: () => store.changeSport(index),
                    child: Container(
                      height: 38.h,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.r),
                        color: Colors.transparent,
                        border: Border.all(
                          color: isSelected
                              ? AppColors.primaryGreen
                              : Colors.white54,
                          width: 1.4,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            sports[index].icon,
                            size: 18.sp,
                            color: isSelected
                                ? AppColors.primaryGreen
                                : Colors.white70,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            sports[index].title,
                            style: TextStyle(
                              fontFamily: 'Myriadpro',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                              color: isSelected
                                  ? AppColors.primaryGreen
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
