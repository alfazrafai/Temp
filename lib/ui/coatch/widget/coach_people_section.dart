import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';
import '../store/coach_profile_store.dart';

class CoachPeopleSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachPeopleSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        Text(
          'Select Number of People',
          style: TextStyle(
            fontFamily: 'Myriadpro',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),

        SizedBox(height: 14.h),

        Observer(
          builder: (_) => Row(
            children: [
              Expanded(
                child: Wrap(
                  spacing: 10.w,
                  runSpacing: 10.h,
                  children: List.generate(5, (index) {
                    final value = index + 1;
                    final isSelected = store.numberOfPeople == value;

                    return GestureDetector(
                      onTap: () => store.setPeople(value),
                      child: Container(
                        width: 36.w,
                        height: 36.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isSelected
                                ? AppColors.primaryGreen
                                : Colors.white54,
                            width: 1.2,
                          ),
                        ),
                        child: Text(
                          value.toString(),
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

              SizedBox(width: 16.w),

              Row(
                children: [
                  _counterButton(
                    icon: Icons.remove,
                    onTap: store.decrementPeople,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    store.numberOfPeople.toString(),
                    style: TextStyle(
                      fontFamily: 'Myriadpro',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textWhite,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  _counterButton(icon: Icons.add, onTap: store.incrementPeople),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _counterButton({required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36.w,
        height: 36.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: Colors.white54),
        ),
        child: Icon(icon, size: 18.sp, color: AppColors.textWhite),
      ),
    );
  }
}
