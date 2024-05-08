import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_store/minor_screens/sub_dashboard.dart';
import 'package:multi_store/widgets/vertical_spacing.dart';

List dashboardList = [
  {
    'label': 'My store',
    'icon': Icons.shop,
  },
  {
    'label': 'Orders',
    'icon': Icons.shop_2_outlined,
  },
  {
    'label': 'Edit Profile',
    'icon': Icons.edit,
  },
  {
    'label': 'Manage Products',
    'icon': Icons.settings,
  },
  {
    'label': 'Balance',
    'icon': Icons.attach_money,
  },
  {
    'label': 'Statics',
    'icon': Icons.show_chart,
  },
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Dashboard',
            style: GoogleFonts.acme(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 28,
                letterSpacing: 1.2,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.black),
              onPressed: () {},
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 40,
            mainAxisSpacing: 80,
            children: List.generate(dashboardList.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubDashboardScreen(
                                title:
                                    capitalize(dashboardList[index]['label']),
                              )));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 7),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          dashboardList[index]['icon'],
                          size: 50,
                          color: const Color(0xff57A39E),
                        ),
                        const VerticalSpacing(10),
                        Text(
                          dashboardList[index]['label'].toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff57A39E),
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
