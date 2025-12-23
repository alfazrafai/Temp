import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';
import '../store/coach_profile_store.dart';

class CoachCoachingTypeSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachCoachingTypeSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final types = ['1:1', 'Group', 'Request', 'Online'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        Text(
          'Select type of coaching',
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
              children: List.generate(types.length, (index) {
                final isSelected = store.selectedCoachingTypeIndex == index;

                return Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: GestureDetector(
                    onTap: () => store.changeCoachingType(index),
                    child: Container(
                      height: 38.h,
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
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
                      alignment: Alignment.center,
                      child: Text(
                        types[index],
                        style: TextStyle(
                          fontFamily: 'Myriadpro',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: isSelected
                              ? AppColors.primaryGreen
                              : Colors.white70,
                        ),
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
