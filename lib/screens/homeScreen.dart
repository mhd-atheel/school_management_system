
import 'package:flutter/material.dart';
import 'package:school_management_system/screens/students.dart';
import 'package:school_management_system/widgets/dashboardBox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff4FA4F4),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Students'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Students()),
                );
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Dashboard",
            style:  TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.white
        ),
        ),

        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xff4FA4F4),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardBox(
                  name: 'Students', count: '1756', color: Color(0xff13AE4B),
                ),
                DashboardBox(
                  name: 'Teachers', count: '124', color: Color(0xff5B8CEB),
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
                  name: 'Leaves', count: '152', color: Color(0xffB51D46),
                ),
                DashboardBox(
                  name: 'Staffs', count: '052', color: Color(0xffF74A8A),
                ),
                // DashboardBox(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DashboardBox(
                  name: 'Donations', count: '600', color: Color(0xffFFC16E),
                ),
                DashboardBox(
                  name: 'Subjects', count: '012', color: Color(0xffFD9041),
                ),
                // DashboardBox(),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
