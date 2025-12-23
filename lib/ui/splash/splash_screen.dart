import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:temp/ui/live_signals/live_signals_screen.dart';
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
              /// Right aligned background image
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  AppImages.splashBG,
                  height: 1.sh,
                  fit: BoxFit.cover,
                ),
              ),

              /// Dark gradient overlay
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

              /// Logo + Title
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// Gold circle logo
                    Container(
                      height: 78.w,
                      width: 78.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD4AF37),
                      ),
                      child: Center(
                        child: Image.asset(
                          AppImages.saloonLogo,
                          height: 34.w,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    SizedBox(height: 18.h),

                    /// Brand text (MyriadPro)
                    Text(
                      'Convenient Cuts',
                      style: TextStyle(
                        fontFamily: 'Myriadpro',
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w600, // SemiBold
                        color: Colors.white,
                        letterSpacing: 1.1,
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
