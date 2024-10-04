import 'package:bookingapp/models/Onboarding_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget{
  const OnboardingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/onboarding_images/onboarding_background.png"),
              fit: BoxFit.cover
          ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 100,),
                const Image(image: AssetImage("assets/images/logo.png"),),
                const SizedBox(height: 5,),
                SvgPicture.asset("assets/icons/onboarding_name_app.svg"),
                const SizedBox(height: 60,),
                const Text("Let’s Find Your Sweet & Dream Place ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                      backgroundColor: const Color(0xFF06B3C4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                  onPressed: (){},
                  child: const Text("Create Account", style:  TextStyle(color: Colors.white, fontSize: 16)),

                ),
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.transparent, // Fully transparent foreground
                    overlayColor: Colors.transparent,
                  ),
                  child: const Text(
                    "Already Have an Account",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
