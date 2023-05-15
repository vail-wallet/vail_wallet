import 'package:flutter/material.dart';
import 'package:vial_wallet/utils/colors.dart';
import 'package:vial_wallet/view/comingsoon.dart';
import 'package:vial_wallet/view/dash.dart';
import 'package:vial_wallet/view/interneterror.dart';
import 'package:vial_wallet/view/update.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List body = [const DashBoard(), const ComingSoon(), const UpdateScreen(), const InternetError()];
   int catIndex = 0, currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: ontap,
        backgroundColor: Color.fromARGB(255, 251, 252, 253),
        fixedColor: AppColor.primary,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme:
             IconThemeData(color: AppColor.primary),
        unselectedIconTheme:
             IconThemeData(color: AppColor.primary),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fingerprint_sharp,),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_outlined),
            label: 'Bio pay',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Invite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

   void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}