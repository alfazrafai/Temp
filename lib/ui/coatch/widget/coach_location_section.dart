import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';
import '../../../value/image_path_string.dart';
import '../store/coach_profile_store.dart';

class CoachLocationSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachLocationSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final locations = [
      {
        'name': 'Rocks Lane - Chiswick',
        'distance': '2 kms away from you',
        'price': 'AED 2345',
        'image': AppImages.mapImage,
      },
      {
        'name': 'Green Park Arena',
        'distance': '4 kms away from you',
        'price': 'AED 1999',
        'image': AppImages.mapImage,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        Text(
          'Select Location',
          style: TextStyle(
            fontFamily: 'Myriadpro',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),

        SizedBox(height: 14.h),

        Observer(
          builder: (_) => SizedBox(
            height: 110.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: locations.length,
              separatorBuilder: (_, __) => SizedBox(width: 12.w),
              itemBuilder: (_, index) {
                final isSelected = store.selectedLocationIndex == index;
                final location = locations[index];

                return GestureDetector(
                  onTap: () => store.changeLocation(index),
                  child: Container(
                    width: 280.w,
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.primaryGreen
                            : Colors.white24,
                        width: 1.2,
                      ),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            location['image'] as String,
                            width: 64.w,
                            height: 64.w,
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 12.w),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      location['name'] as String,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Myriadpro',
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.textWhite,
                                      ),
                                    ),
                                  ),
                                  if (isSelected)
                                    Icon(
                                      Icons.check_circle,
                                      size: 16.sp,
                                      color: AppColors.primaryGreen,
                                    ),
                                ],
                              ),

                              SizedBox(height: 4.h),

                              Text(
                                '(${location['distance']})',
                                style: TextStyle(
                                  fontFamily: 'Myriadpro',
                                  fontSize: 11.sp,
                                  color: AppColors.textMuted,
                                ),
                              ),

                              SizedBox(height: 6.h),

                              Row(
                                children: [
                                  Icon(
                                    Icons.music_note_outlined,
                                    size: 14.sp,
                                    color: AppColors.textMuted,
                                  ),
                                  SizedBox(width: 6.w),
                                  Text(
                                    location['price'] as String,
                                    style: TextStyle(
                                      fontFamily: 'Myriadpro',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textWhite,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.w),

                        Container(
                          width: 36.w,
                          height: 36.w,
                          decoration: BoxDecoration(
                            color: AppColors.primaryGreen,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18.sp,
                            color: Colors.black,
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
