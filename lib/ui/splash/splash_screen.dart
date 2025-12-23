import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:temp/ui/live_signals/live_signals_screen.dart';
import 'package:temp/value/app_colors.dart';
import 'package:temp/value/image_path_string.dart';
import 'splash_store.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashStore store = SplashStore();

  @override
  void initState() {
    super.initState();
    store.startSplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Observer(
        builder: (_) {
          if (store.navigate) {
            Future.microtask(() {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => LiveSignalsScreen()),
              );
            });
          }

          return Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  AppImages.splashBG,
                  height: 1.sh,
                  fit: BoxFit.cover,
                ),
              ),

              Container(
                width: 1.sw,
                height: 1.sh,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.92),
                      Colors.black.withOpacity(0.35),
                    ],
                  ),
                ),
              ),

              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 78.w,
                      width: 78.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD4AF37),
                      ),
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontFamily: 'Myriadpro',
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 18.h),

                    Text(
                      'Convenient Cuts',
                      style: TextStyle(
                        fontFamily: 'Myriadpro',
                        fontSize: 25,
                        color: AppColors.textWhite,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
