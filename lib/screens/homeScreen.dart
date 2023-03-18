
import 'package:flutter/material.dart';
import 'package:school_management_system/widgets/dashboardBox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xff4FA4F4),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardBox(
                  name: 'Students', count: '256', color: Color(0xff13AE4B),
                ),
                DashboardBox(
                  name: 'Teachers', count: '256', color: Color(0xff5B8CEB),
                ),
                // DashboardBox(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardBox(
                  name: 'LEAVES', count: '256', color: Color(0xffB51D46),
                ),
                DashboardBox(
                  name: 'Staffs', count: '256', color: Color(0xffF74A8A),
                ),
                // DashboardBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
