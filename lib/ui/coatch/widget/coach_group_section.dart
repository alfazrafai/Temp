import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';

import '../../../value/image_path_string.dart';
import '../store/coach_profile_store.dart';

class CoachGroupSessionSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachGroupSessionSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.h),

        Text(
          'Available Group Sessions',
          style: TextStyle(
            fontFamily: 'Myriadpro',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textWhite,
          ),
        ),

        SizedBox(height: 14.h),

        Observer(
          builder: (_) => Container(
            padding: EdgeInsets.all(14.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(color: Colors.white24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _row(Icons.sports_cricket_outlined, 'Cricket'),
                _row(
                  Icons.calendar_today_outlined,
                  'Thursday 07 Sep, 09:00 - 11:00',
                ),
                _row(Icons.male_outlined, 'Men Only (18 - 25 Years only)'),
                _row(Icons.shield_outlined, '1.0 - 2.4'),
                _row(
                  Icons.location_on_outlined,
                  'Rocks Lane - Chiswick (Indoor)',
                ),
                _row(Icons.music_note_outlined, 'AED 670'),

                SizedBox(height: 16.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Members (16/18)',
                      style: TextStyle(
                        fontFamily: 'Myriadpro',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textWhite,
                      ),
                    ),
                    _chatButton(),
                  ],
                ),

                SizedBox(height: 12.h),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _member(AppImages.profileSalman, 'Dr. Salman', '3.0'),
                    _member(AppImages.profileShahrukh, 'King Khan', '2.5'),
                    _member(AppImages.profileSid, 'Sid', '2.5'),
                    _member(AppImages.relianceLogo, 'Mukesh Amb.', '2.5'),

                    SizedBox(width: 12.w),

                    Container(
                      width: 1,
                      height: 52.h,
                      margin: EdgeInsets.only(top: 6.h),
                      color: Colors.white38,
                    ),

                    SizedBox(width: 12.w),

                    _join(store),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _row(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 14.sp, color: Colors.white70),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Myriadpro',
                fontSize: 12.sp,
                color: AppColors.textWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _member(String img, String name, String rating) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryGreen),
            ),
            child: CircleAvatar(radius: 16.r, backgroundImage: AssetImage(img)),
          ),
          SizedBox(height: 4.h),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Myriadpro',
              fontSize: 10.sp,
              color: AppColors.textWhite,
            ),
          ),
          Text(
            rating,
            style: TextStyle(
              fontFamily: 'Myriadpro',
              fontSize: 9.sp,
              color: AppColors.textMuted,
            ),
          ),
        ],
      ),
    );
  }

  Widget _more(String text) {
    return Container(
      width: 34.w,
      height: 34.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primaryGreen),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Myriadpro',
          fontSize: 10.sp,
          color: AppColors.primaryGreen,
        ),
      ),
    );
  }

  Widget _join(CoachProfileStore store) {
    return GestureDetector(
      onTap: store.toggleJoinGroup,
      child: Container(
        margin: EdgeInsets.only(left: 12.w),
        width: 34.w,
        height: 34.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.primaryGreen,
            width: 1.2,
            style: BorderStyle.solid,
          ),
        ),
        child: Icon(
          store.joinedGroupSession ? Icons.check : Icons.add,
          size: 18.sp,
          color: AppColors.primaryGreen,
        ),
      ),
    );
  }

  Widget _chatButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: Colors.white24),
      ),
      child: Row(
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 13.sp,
            color: AppColors.textWhite,
          ),
          SizedBox(width: 6.w),
          Text(
            'Chat',
            style: TextStyle(
              fontFamily: 'Myriadpro',
              fontSize: 11.sp,
              color: AppColors.textWhite,
            ),
          ),
        ],
      ),
    );
  }
}
