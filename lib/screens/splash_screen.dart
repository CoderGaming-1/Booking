import 'package:bookingapp/screens/onBoarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}
class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const OnboardingScreen(),
          ));
    });

  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF06B3C4), Colors.white,
          ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                  'assets/images/splash_logo.png',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 10,),
            SvgPicture.asset(
              "assets/icons/name_app.svg"
            )
          ],
        ),
      ),
    );
  }
}