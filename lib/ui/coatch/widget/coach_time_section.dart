import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../value/app_colors.dart';
import '../screen/coach_time_screen.dart';
import '../store/coach_profile_store.dart';

class CoachTimeSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachTimeSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final times = [
      '12:00 AM - 01:00 AM',
      '01:00 AM - 02:00 AM',
      '02:00 AM - 03:00 AM',
      '03:00 AM - 04:00 AM',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        /// TITLE + SEE ALL
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Time',
              style: TextStyle(
                fontFamily: 'Myriadpro',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textWhite,
              ),
            ),
            GestureDetector(
              onTap: () async {
                final selectedIndex = await Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CoachTimeScreen(selectedIndex: store.selectedTimeIndex),
                  ),
                );

                if (selectedIndex != null) {
                  store.changeTime(selectedIndex);
                }
              },
              child: Text(
                'See All',
                style: TextStyle(
                  fontFamily: 'Myriadpro',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryGreen,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 12.h),

        /// TIME SLOTS
        Observer(
          builder: (_) => SizedBox(
            height: 44.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: times.length,
              separatorBuilder: (_, __) => SizedBox(width: 12.w),
              itemBuilder: (_, index) {
                final isSelected = store.selectedTimeIndex == index;

                return GestureDetector(
                  onTap: () => store.changeTime(index),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.primaryGreen
                            : Colors.white24,
                      ),
                    ),
                    child: Text(
                      times[index],
                      style: TextStyle(
                        fontFamily: 'Myriadpro',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: isSelected
                            ? AppColors.primaryGreen
                            : AppColors.textWhite,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
