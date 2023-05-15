import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vial_wallet/utils/colors.dart';
import 'package:vial_wallet/view/homepage.dart';


class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Text(
              'App Update',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColor.black,
                  fontWeight: FontWeight.w700),
            ),
      
            Image.asset('asset/imgs/update.png'),
             
             Text(
              'Lastest Version',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColor.black,
                  fontWeight: FontWeight.w700),
            ),
        
            Text(
              'Your version of Vail Wallet is no longer supported please update your app to keep enjoying better payment experience',
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
                          child: Center(child: Text('Update',  style: GoogleFonts.mulish(
                                          color: AppColor.white, fontSize: 20, fontWeight: FontWeight.w500 ),)),
                ),
            )
      
          ],
        ),
      ),
    );
  }
}