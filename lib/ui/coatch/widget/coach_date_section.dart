import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../value/app_colors.dart';
import '../screen/calander_screen.dart';
import '../store/coach_profile_store.dart';

class CoachDateSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachDateSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final dates = List.generate(
      7,
      (index) => DateTime.now().add(Duration(days: index)),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        /// TITLE + CALENDAR
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Date',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textWhite,
              ),
            ),
            GestureDetector(
              onTap: () async {
                final pickedDate = await Navigator.push<DateTime>(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CoachCalendarScreen(initialDate: store.selectedDate),
                  ),
                );

                if (pickedDate != null) {
                  store.updateDate(pickedDate);
                }
              },
              child: Text(
                'Calendar',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryGreen,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 14.h),

        /// DATE CARDS
        Observer(
          builder: (_) => SizedBox(
            height: 110.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: dates.length,
              separatorBuilder: (_, __) => SizedBox(width: 14.w),
              itemBuilder: (_, index) {
                final date = dates[index];
                final isSelected = DateUtils.isSameDay(
                  store.selectedDate,
                  date,
                );

                return GestureDetector(
                  onTap: () => store.updateDate(date),
                  child: Container(
                    width: 80.w,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(
                        width: 1.5,
                        color: isSelected
                            ? AppColors.primaryGreen
                            : Colors.white70,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat('EEE').format(date).toUpperCase(),
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: isSelected
                                ? AppColors.primaryGreen
                                : AppColors.textWhite,
                          ),
                        ),
                        Text(
                          date.day.toString().padLeft(2, '0'),
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                            color: isSelected
                                ? AppColors.primaryGreen
                                : AppColors.textWhite,
                          ),
                        ),
                        Text(
                          DateFormat('MMM').format(date),
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: isSelected
                                ? AppColors.primaryGreen
                                : AppColors.textWhite,
                          ),
                        ),
                      ],
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
