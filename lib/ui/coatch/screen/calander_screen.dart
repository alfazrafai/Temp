import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../value/app_colors.dart';

class CoachCalendarScreen extends StatefulWidget {
  final DateTime initialDate;

  const CoachCalendarScreen({super.key, required this.initialDate});

  @override
  State<CoachCalendarScreen> createState() => _CoachCalendarScreenState();
}

class _CoachCalendarScreenState extends State<CoachCalendarScreen> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textWhite,
      appBar: AppBar(
        backgroundColor: AppColors.textWhite,
        elevation: 0,
        title: const Text('Select Date'),
      ),
      body: CalendarDatePicker(
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)),
        onDateChanged: (date) {
          setState(() {
            selectedDate = date;
          });
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
            Navigator.pop(context, selectedDate);
          },
          child: const Text(
            'Confirm Date',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
