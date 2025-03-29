import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: const EidCongrats()));
}

class EidCongrats extends StatelessWidget {
  const EidCongrats({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF5E6CA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF143A48),
                foregroundColor: const Color(0xFFFAC278),
                minimumSize: Size(size.width * 0.5, 50),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EidMubarak()),
                );
              },
              child: Text(
                'Start',
                style: GoogleFonts.tajawal(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
                .animate()
                .fadeIn(delay: 300.ms)
                .scale(
                  begin: const Offset(0.8, 0.8),
                  curve: Curves.elasticOut,
                )
                .shake(delay: 1.seconds, hz: 2),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}

class EidMubarak extends StatelessWidget {
  const EidMubarak({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 10;
    return Scaffold(
      backgroundColor: const Color(0xFFF5E6CA),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                child: Lottie.asset("assets/moon_star.json", width: width),
              ),
              Positioned(
                top: 100,
                child: Lottie.asset(
                  "assets/mosque.json",
                  width: width,
                ),
              ),
              Positioned(
                top: 410,
                child: Lottie.asset("assets/eid_mubarak.json", width: width),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
