import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';

import '../store/coach_profile_store.dart';

class CoachTabsSection extends StatelessWidget {
  final CoachProfileStore store;

  const CoachTabsSection({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final tabs = ['Coaching', 'Posts', 'About'];

    return Observer(
      builder: (_) {
        return Column(
          children: [
            Row(
              children: List.generate(tabs.length, (index) {
                final bool isSelected = store.selectedTabIndex == index;

                return Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => store.changeTab(index),
                    child: Column(
                      children: [
                        Text(
                          tabs[index],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: isSelected
                                ? AppColors.primaryGreen
                                : AppColors.textMuted,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Container(
                          height: 2.h,
                          width: 40.w,
                          color: isSelected
                              ? AppColors.primaryGreen
                              : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),

            SizedBox(height: 12.h),

            /// Divider
            Container(height: 1, color: Colors.white12),
          ],
        );
      },
    );
  }
}
