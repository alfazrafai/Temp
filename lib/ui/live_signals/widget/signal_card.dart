import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';
import '../../../value/image_path_string.dart';

class SignalCard extends StatelessWidget {
  const SignalCard({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16.w, 26.h, 16.w, 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                gradient: const LinearGradient(
                  colors: [AppColors.cardLight, AppColors.cardDark],
                ),
                border: Border.all(color: Colors.white24, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          AppImages.relianceLogo,
                          height: 18.w,
                        ),
                      ),
                      SizedBox(width: 10.w),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Reliance',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textWhite,
                                ),
                              ),
                              SizedBox(width: 6.w),
                              _exchangeChip(),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Reliance Industries Ltd',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.textMuted,
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'LTP',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.textHint,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.arrow_drop_up,
                                color: AppColors.pGreen,
                              ),
                              Text(
                                '2764.64',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.pGreen,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 18.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _info('Gain so far', '0.00%'),
                      _info('Potential left', '34.7%'),
                      _tradeButton(),
                    ],
                  ),
                ],
              ),
            ),

            Positioned(
              top: 0,
              left: 20.w,
              right: 20.w,
              child: Container(height: 1, color: Colors.white38),
            ),

            Positioned(
              top: -10.h,
              left: 20.w,
              child: _floatingTag('Intraday', AppColors.intradayPink),
            ),

            Positioned(
              top: -10.h,
              right: 20.w,
              child: _floatingTag(
                'Short Term',
                AppColors.pGreen,
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _floatingTag(
    String text,
    Color bgColor, {
    Color textColor = Colors.white,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [BoxShadow(color: bgColor.withOpacity(0.5), blurRadius: 8)],
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }

  Widget _exchangeChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: .spaceAround,

        children: [
          Icon(Icons.star, size: 15, color: AppColors.textWhite),
          Text(
            'NSE',
            style: TextStyle(fontSize: 10.sp, color: AppColors.textWhite),
          ),
        ],
      ),
    );
  }

  Widget _info(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 12.sp, color: AppColors.textHint),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.pGreen,
          ),
        ),
      ],
    );
  }

  Widget _tradeButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.pGreen,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(color: AppColors.pGreen.withOpacity(0.5), blurRadius: 10),
        ],
      ),
      child: Text(
        'Trade Now',
        style: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
