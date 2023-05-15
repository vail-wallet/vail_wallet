import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vial_wallet/utils/colors.dart';
import 'package:vial_wallet/view/homepage.dart';

class InternetError extends StatefulWidget {
  const InternetError({super.key});

  @override
  State<InternetError> createState() => _InternetErrorState();
}

class _InternetErrorState extends State<InternetError> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Text(
              'No internet connection',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColor.black,
                  fontWeight: FontWeight.w700),
            ),
      
            Image.asset('asset/imgs/error.png'),
             
             Text(
              'Something Went Wrong',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColor.black,
                  fontWeight: FontWeight.w700),
            ),
        
            Text(
              'Refresh or screenshot this page and share it with Vail Wallet support assistance',
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
                          child: Center(child: Text('Refresh',  style: GoogleFonts.mulish(
                                          color: AppColor.white, fontSize: 20, fontWeight: FontWeight.w500 ),)),
                ),
            )
      
          ],
        ),
      ),
    );
  }
}