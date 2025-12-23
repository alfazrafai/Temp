import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:temp/ui/coatch/widget/coach_group_section.dart';
import 'package:temp/ui/coatch/widget/coach_level_section.dart';
import 'package:temp/ui/coatch/widget/coach_location_section.dart';

import '../../../value/app_colors.dart';

import '../store/coach_profile_store.dart';
import '../widget/coach_book_button.dart';
import '../widget/coach_coaching_type_section.dart';
import '../widget/coach_date_section.dart';
import '../widget/coach_people_section.dart';
import '../widget/coach_profile_section.dart';
import '../widget/coach_sport_selection.dart';
import '../widget/coach_stats_section.dart';
import '../widget/coach_tab_section.dart';
import '../widget/coach_time_section.dart';

class CoachProfileScreen extends StatefulWidget {
  const CoachProfileScreen({super.key});

  @override
  State<CoachProfileScreen> createState() => _CoachProfileScreenState();
}

class _CoachProfileScreenState extends State<CoachProfileScreen> {
  late final CoachProfileStore store;

  @override
  void initState() {
    super.initState();
    store = CoachProfileStore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// PART 1
                const CoachHeaderSection(),

                /// PART 2
                const CoachStatsSection(),

                SizedBox(height: 20.h),

                /// PART 3
                CoachTabsSection(store: store),

                /// PART 4
                CoachSportSection(store: store),

                // PArt 5
                CoachCoachingTypeSection(store: store),

                // Part 6
                CoachDateSection(store: store),

                //7
                CoachTimeSection(store: store),

                //8
                CoachPeopleSection(store: store),

                //9
                CoachLevelSection(store: store),

                //10
                CoachLocationSection(store: store),

                //11
                CoachGroupSessionSection(store: store),

                CoachBookSessionButton(
                  enabled: true,
                  onTap: () {
                    // TODO: book session action
                  },
                ),

                SizedBox(height: 25.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
