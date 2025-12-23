import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';
import '../../../value/image_path_string.dart';

class CoachHeaderSection extends StatelessWidget {
  const CoachHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40.h,
              width: 120.w,
              child: Image.asset(AppImages.coachLogo),
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  color: AppColors.textWhite,
                  size: 20.sp,
                ),
                SizedBox(width: 16.w),
                Icon(
                  Icons.chat_bubble_outline,
                  color: AppColors.textWhite,
                  size: 20.sp,
                ),
                SizedBox(width: 16.w),
                Icon(
                  Icons.notifications_none,
                  color: AppColors.textWhite,
                  size: 22.sp,
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 24.h),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60.r,
              backgroundImage: AssetImage(AppImages.profileSalman),
            ),

            SizedBox(width: 14.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Salman Khan',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textWhite,
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Icon(
                        Icons.verified,
                        size: 16.sp,
                        color: AppColors.primaryGreen,
                      ),
                      SizedBox(width: 20.w),

                      Row(
                        children: [
                          Icon(
                            Icons.share,
                            color: AppColors.textWhite,
                            size: 16.sp,
                          ),
                          SizedBox(width: 6.w),
                          Icon(
                            Icons.favorite_border,
                            size: 16.sp,
                            color: AppColors.textWhite,
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    'Director of Sport & Head Coach',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textMuted,
                    ),
                  ),

                  SizedBox(height: 6.h),

                  Row(
                    children: [
                      Icon(
                        Icons.bookmark_border_outlined,
                        size: 14.sp,
                        color: AppColors.textWhite,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.textWhite,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.star_border_purple500_outlined,
                        size: 14.sp,
                        color: AppColors.primaryGreen,
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        '3.7 (12)',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.textMuted,
                        ),
                      ),
                      SizedBox(width: 12.w),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 14.sp,
                        color: AppColors.textMuted,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '5 kms away',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.textMuted,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sports_tennis_outlined,
                        size: 18.sp,
                        color: AppColors.textWhite,
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.sports_cricket,
                        size: 18.sp,
                        color: AppColors.textWhite,
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.sports_tennis_outlined,
                        size: 18.sp,
                        color: AppColors.textWhite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
