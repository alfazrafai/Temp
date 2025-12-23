import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';

class CoachTimeScreen extends StatefulWidget {
  final int selectedIndex;

  const CoachTimeScreen({super.key, required this.selectedIndex});

  @override
  State<CoachTimeScreen> createState() => _CoachTimeScreenState();
}

class _CoachTimeScreenState extends State<CoachTimeScreen> {
  late int selected;

  final times = List.generate(
    24,
    (index) =>
        '${index.toString().padLeft(2, '0')}:00 - ${(index + 1).toString().padLeft(2, '0')}:00',
  );

  @override
  void initState() {
    super.initState();
    selected = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text(
          'Select Time',
          style: TextStyle(fontFamily: 'Myriadpro', color: AppColors.textWhite),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16.w),
        itemCount: times.length,
        separatorBuilder: (_, __) => SizedBox(height: 12.h),
        itemBuilder: (_, index) {
          final isSelected = selected == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              height: 44.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.r),
                border: Border.all(
                  color: isSelected ? AppColors.primaryGreen : Colors.white24,
                ),
              ),
              child: Text(
                times[index],
                style: TextStyle(
                  fontFamily: 'Myriadpro',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: isSelected
                      ? AppColors.primaryGreen
                      : AppColors.textWhite,
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryGreen,
            minimumSize: Size(double.infinity, 48.h),
          ),
          onPressed: () {
            Navigator.pop(context, selected);
          },
          child: Text(
            'Confirm Time',
            style: TextStyle(
              fontFamily: 'Myriadpro',
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
