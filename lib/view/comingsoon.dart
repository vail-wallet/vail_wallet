import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vial_wallet/utils/colors.dart';
import 'package:vial_wallet/view/homepage.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Text(
              'Coming Soon',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColor.black,
                  fontWeight: FontWeight.w700),
            ),
      
            Image.asset('asset/imgs/soon.png'),
             
             Text(
              'We are Working',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColor.black,
                  fontWeight: FontWeight.w700),
            ),
        
            Text(
              'The Vail Wallet Community are working hard to improve this feature, we will keep updating you over the mail every Friday on our new awesome features to improve your payment experience',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: AppColor.black,
                  fontWeight: FontWeight.w400),
            ),
      
            GestureDetector(
              onTap: () {
                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const HomePage()));
              },
              child: Container( 
                  height: 40,
                  width: 300,
                   decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColor.primary,
                            border: Border.all(width: 3, color: AppColor.primary)
                          ),
                          child: Center(child: Text('Back',  style: GoogleFonts.mulish(
                                          color: AppColor.white, fontSize: 20, fontWeight: FontWeight.w500 ),)),
                ),
            )
      
          ],
        ),
      ),
    );
  }
}
