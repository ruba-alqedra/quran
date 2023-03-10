import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/screen/home_page_screen.dart';

import '../constants.dart';
import '../helper/read_from_json.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Future _future = Future.delayed(
    const Duration(seconds: 4),
  );

  late final Future<List> data;

  Future readJson() async {
    dynamic jsonData = await JsonReader().readJson();
    data = await jsonData;
    return data;
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MyHomePage();
        } else {
          return Scaffold(
            backgroundColor: background,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Quran App',
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Learn Quran and \nRecite once everyday',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF635985),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 450,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF672CBC),
                            ),
                            child: SvgPicture.asset('assets/svgs/splash.svg'),
                          ),
                          // Positioned(
                          //   right: 0,
                          //   left: 0,
                          //   bottom: -23,
                          //   child: Center(
                          //     child: GestureDetector(
                          //       behavior: HitTestBehavior.opaque,
                          //       onTap: () {
                          //         Navigator.pushNamed(context, 'HomeScreen');
                          //       },
                          //       child: Container(
                          //         padding: EdgeInsets.symmetric(
                          //           vertical: 16,
                          //           horizontal: 40,
                          //         ),
                          //         decoration: BoxDecoration(
                          //           color: orange,
                          //           borderRadius: BorderRadius.circular(30),
                          //         ),
                          //         child: Text(
                          //           'Get Started',
                          //           style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: 18,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
