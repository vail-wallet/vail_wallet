import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('asset/imgs/avatar.png'),
                        Column(
                          children: [
                            Text('Good Morning'),
                            Text('Nkwakau vctor')
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(child: Image.asset('asset/imgs/bell.png')),
                         GestureDetector(child: Image.asset('asset/imgs/bell.png'))
                      ],
                    )
                  ],
                ),
                Text('****'),

                Row(
                  children: [
                     GestureDetector(child: Image.asset('asset/imgs/cash.png')),
                         GestureDetector(child: Image.asset('asset/imgs/add_cash.png')),
                          GestureDetector(child: Image.asset('asset/imgs/airtime.png')),
                         GestureDetector(child: Image.asset('asset/imgs/receive.png'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}