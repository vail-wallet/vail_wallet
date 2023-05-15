import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vial_wallet/auth/loginpage.dart';
import 'package:vial_wallet/auth/register.dart';
import 'package:vial_wallet/utils/colors.dart';
import 'package:vial_wallet/utils/images.dart';
import 'package:vial_wallet/utils/texts.dart';
import 'package:vial_wallet/view/dash.dart';
import 'package:vial_wallet/view/homepage.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

   PageController controller=PageController();
  int currentIndex = 0;
    bool isLastPage = false;
  List<String> texts = [
    AppTexts.txt1,
    AppTexts.txt2,
    AppTexts.txt3,
  ];

  List<String> tets = [
    AppTexts.txt4,
    AppTexts.txt5,
    AppTexts.txt6,
  ];


  List<String> images = [
    AppImages.splashbio,
    AppImages.splashcurrency,
    AppImages.splashpay,
  ];


   @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(bottom: 80),
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 5);
              },
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top:  10,
                            child: Image.asset(
                              AppImages.splashpay,
                              height: 300,
                              width: 300,
                            ),
                          ),
                          Positioned(
                            top:  300,
                            left:  40,
                            right:  40,
                            child: Padding(
                              padding: const EdgeInsets.all(.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Easy Payments",
                                    style: GoogleFonts.mulish(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "No restrictions in sending and receiving \npayments from family and family globally",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 10,
                            child: Image.asset(
                              AppImages.splashcurrency,
                              height: 300,
                              width: 300,
                            ),
                          ),
                          Positioned(
                           top:  300,
                            left:  40,
                            right:  40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Currency Exchange",
                                    style: GoogleFonts.mulish(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height:  40,
                                  ),
                                  Text(
                                    "Accept, send and receive payment in any \nof your choice in seconds.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top:  10,
                            child: Image.asset(
                             AppImages.splashbio,
                              height: 400,
                              width: 400,
                            ),
                          ),
                          Positioned(
                            top:  300,
                            left:  40,
                            right:  40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Bio Payments",
                                    style: GoogleFonts.mulish(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height:  40,
                                  ),
                                  Text(
                                    "Shop offline on physical stores using your\nfingerprint on bio pay device",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      dotColor: Colors.black,
                      dotHeight: 10,
                      activeDotColor: Colors.black), // your preferred effect
                  onDotClicked: (index) {}),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.4,
                        height: 50,
                        child: GestureDetector(
                          onTap: (){
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const DashBoard()));
                          },
                          child: customButton(
                             text: 'Create account',
                             color: AppColor.primary,
                             colors: AppColor.white,
                                  ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.4,
                        height: 50,
                        child: GestureDetector(

                          onTap: (){
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const HomePage()));
                          },
                          child: customButton(
                              text: 'Sign In',
                              color: AppColor.white,
                              colors: AppColor.primary,
                                  ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
    );
  //     Container(height: MediaQuery.of(context).size.height,
  //       width: MediaQuery.of(context).size.width,
  //       decoration: BoxDecoration(
  //         //color: AppColor.primary,
         
        
  //       ),
  //       child: SafeArea(
  //         child: Padding(
  //           padding: const EdgeInsets.all(15.0),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               PageView(
  //                 controller: controller,
  //                 children: [
  //                   Image.asset(images[currentIndex]),
  //                    Text(
  //                 tets[currentIndex],
  //                 textAlign: TextAlign.center,
  //                 style:TextStyle(fontSize: 20, color: AppColor.black, fontWeight: FontWeight.w600, letterSpacing: 1,),
  //               ),
  //                 ],
  //               ),
  //               //Image.asset(images[currentIndex]),
  //               const SizedBox(height: 30),
  //               Text(
  //                 tets[currentIndex],
  //                 textAlign: TextAlign.center,
  //                 style:TextStyle(fontSize: 20, color: AppColor.black, fontWeight: FontWeight.w600, letterSpacing: 1,),
  //               ),
  //               const SizedBox(height: 30),
  //               Text(
  //                 texts[currentIndex],
  //                 textAlign: TextAlign.center,
  //                 style:  TextStyle(fontSize: 16,color: AppColor.black, fontWeight: FontWeight.w400,),
  //               ),
  //               const SizedBox(height: 50),


  //                     Row(
  //                 mainAxisSize: MainAxisSize.min,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   for (int i = 0; i < images.length; i++)
  //                     i == currentIndex
  //                         ? spareIndicator(true)
  //                         : spareIndicator(false)
  //                 ],
  //               ),
              
               
  //               const SizedBox(height: 30),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   currentIndex == 2
  //                       ? const Center()
  //                       : TextButton(
  //                           onPressed: () {
  //                             setState(() => currentIndex = 2);
  //                           },
  //                           child: Text(
  //                             'SKIP',
  //                             style: TextStyle(
  //                               color: AppColor.white,
  //                               fontSize: 16,
  //                               fontWeight: FontWeight.w600,
  //                             ),
  //                           ),
  //                         ),
  //                   TextButton(
  //                     onPressed: () {
  //                       if (currentIndex == 2) {
  //                         Navigator.pushReplacementNamed(context, '/Signin');
  //                       } else {
  //                         setState(() => currentIndex++);
  //                       }
  //                     },
  //                     child: Text(
  //                       currentIndex == 2 ? 'GET STARTED' : 'NEXT',
  //                       style: TextStyle(
  //                         color: AppColor.white,
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.w600,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 30),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  //  Widget circleIndicator(bool isActive) {
  //   return AnimatedContainer(
  //     duration: const Duration(milliseconds: 100),
  //     height: 10,
  //     width: isActive ? 10 : 10,
  //     margin: const EdgeInsets.symmetric(horizontal: 10),
  //     decoration: BoxDecoration(
  //       color: isActive ? AppColor.black : Colors.grey,
  //       shape: BoxShape.circle,
  //     ),
  //   );
  // }

  //  Widget spareIndicator(bool isActive) {
  //   return Container(
  //     height: 10,
  //     width: isActive ? 20 : 10,
  //      margin: const EdgeInsets.symmetric(horizontal: 5),
  //     decoration: BoxDecoration(
  //       color: isActive ? AppColor.black : Colors.grey,
  //       borderRadius: BorderRadius.circular(10)
  //     ),
  //   );
  
  }

  Widget customButton({String? text,  color, colors}) {
    return Container( 
      height: 20,
      width: 100,
       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: color,
                        border: Border.all(width: 3, color: AppColor.primary)
                      ),
                      child: Center(child: Text('$text',  style: GoogleFonts.mulish(
                                      color: colors, fontSize: 20, fontWeight: FontWeight.w500 ),)),
    );
  }
}