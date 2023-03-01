import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(374, 812),
      builder: (context, child) => Scaffold(
        backgroundColor: background,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Quran App',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.sp,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Learn Quran and \nRecite once everyday',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: text,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 450.h,
                        width: double.infinity.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: const Color(0xFF672CBC),
                        ),
                        child: SvgPicture.asset('assets/svgs/splash.svg'),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: -23,
                        child: Center(
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              Navigator.pushNamed(context, 'HomeScreen');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 16.h,
                                horizontal: 40.w,
                              ),
                              decoration: BoxDecoration(
                                color: orange,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Text(
                                'Get Started',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
