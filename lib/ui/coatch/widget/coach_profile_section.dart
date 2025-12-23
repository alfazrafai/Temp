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
        /// TOP BAR
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.close, color: AppColors.textWhite, size: 22.sp),
                SizedBox(width: 8.w),
                Text(
                  'Rally',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textWhite,
                  ),
                ),
              ],
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

        /// PROFILE INFO
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Profile Image
            CircleAvatar(
              radius: 40.r,
              backgroundImage: AssetImage(AppImages.profileSalman),
            ),

            SizedBox(width: 14.w),

            /// Name + info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Perry Schaden',
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

                  /// Rating + distance
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 14.sp,
                        color: AppColors.primaryGreen,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.textWhite,
                        ),
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
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
