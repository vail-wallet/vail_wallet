import 'package:flutter/material.dart';
import 'package:vial_wallet/utils/colors.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              color: AppColor.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('asset/imgs/avatar.png'),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 7,),
                              Text('Nkwakau vctor',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400),)
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              child: Image.asset('asset/imgs/scan.png')),
                              SizedBox( width: 10,),
                          GestureDetector(
                              child: Image.asset('asset/imgs/bell.png'))
                        ],
                      )
                    ],
                  ),
                  SizedBox( height: 10,),
                  Text('******',
                      style: TextStyle(
                          fontSize: 35,
                          color: AppColor.black,
                          fontWeight: FontWeight.w800),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(child: Image.asset('asset/imgs/cash.png')),
                      GestureDetector(child: Image.asset('asset/imgs/send.png')),
                      GestureDetector(
                          child: Image.asset('asset/imgs/receive.png')),
                      GestureDetector(
                          child: Image.asset('asset/imgs/myaitime.png'))
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Image.asset('asset/imgs/transaction.png'),
                 SizedBox( height: 35,),
                Text(
                  'No Transaction Record',
                  style: TextStyle(
                      fontSize: 17,
                      color: AppColor.black,
                      fontWeight: FontWeight.w700),
                ),
                 SizedBox( height: 20,),
                Text(
                  'By making your first deposit you stand a chance of getting %2 cashback on your first transaction',
                    textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      color: AppColor.black,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
