import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:temp/ui/coatch/screen/coach_profile_screen.dart';
import 'package:temp/ui/live_signals/widget/signal_card.dart';
import 'package:temp/ui/live_signals/widget/signal_filter_chip.dart';
import '../../value/app_colors.dart';
import 'live_signals_store.dart';

class LiveSignalsScreen extends StatefulWidget {
  const LiveSignalsScreen({super.key});

  @override
  State<LiveSignalsScreen> createState() => _LiveSignalsScreenState();
}

class _LiveSignalsScreenState extends State<LiveSignalsScreen> {
  late final LiveSignalsStore store;

  final filters = ['All', 'Short Term', 'Medium Term', 'Long Term'];

  @override
  void initState() {
    super.initState();
    store = LiveSignalsStore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          'Live Signals',
          style: TextStyle(
            fontFamily: 'Myriadpro',
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: AppColors.textWhite,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: AppColors.textWhite),
          ),
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),

              SizedBox(
                height: 40.h,
                child: Observer(
                  builder: (_) => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: filters.length,
                    separatorBuilder: (_, __) => SizedBox(width: 12.w),
                    itemBuilder: (_, index) {
                      return SignalFilterChip(
                        title: filters[index],
                        isSelected: store.selectedFilter == index,
                        onTap: () {
                          store.changeFilter(index);
                        },
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, __) => SignalCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => CoachProfileScreen()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
