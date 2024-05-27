// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_store/customers_screens/customers_screens/customers_screens.dart/customers_screens.dart';
import 'package:multi_store/main_screens/main_screens.dart';
import 'package:multi_store/utilities/utilities.dart';
import 'package:multi_store/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            height: 230,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff89C9C6),
                  Color(0xff2F7D78),
                ],
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                centerTitle: true,
                elevation: 0,
                pinned: true,
                expandedHeight: 140,
                flexibleSpace: LayoutBuilder(
                  builder: (context, constrains) {
                    return FlexibleSpaceBar(
                      title: AnimatedOpacity(
                        opacity: constrains.biggest.height <= 120 ? 1 : 0,
                        duration: const Duration(milliseconds: 200),
                        child: Row(
                          children: [
                            const HorizontalSpacing(90),
                            Text(
                              'Account',
                              style: GoogleFonts.acme(
                                  textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                letterSpacing: 1.2,
                              )),
                            ),
                          ],
                        ),
                      ),
                      background: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff89C9C6),
                              Color(0xff2F7D78),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, top: 25),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(
                                  'assets/images/inapp/guest.jpg',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'guest'.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    wordSpacing: 2.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                  child: Column(children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CartScreen()));
                          },
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: const Center(
                              child: Text(
                                'Cart',
                                style: TextStyle(
                                  color: Color(0xff57A39E),
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color(0xff57A39E),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CustomersOrders()));
                          },
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Center(
                              child: Text(
                                'Orders',
                                style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CustomersWishlist()));
                          },
                          child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: const Center(
                              child: Text(
                                'Wishlist',
                                style: TextStyle(
                                  color: Color(0xff57A39E),
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalSpacing(10),
                Container(
                  color: Colors.grey.shade300,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                        child: Image.asset('assets/images/inapp/logo.png'),
                      ),
                      const VerticalSpacing(10),
                      const AccountProfileWidget(
                        label: 'Account Info',
                      ),
                      const VerticalSpacing(20),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        // height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AccountListTileInfoWidget(
                                icon: Icons.email,
                                text: 'Email address',
                                subText: 'example@email.com',
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Divider(
                                  color: Color(0xff57A39E),
                                  thickness: 2,
                                ),
                              ),
                              AccountListTileInfoWidget(
                                icon: Icons.phone,
                                text: 'Phone',
                                subText: '+111111',
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Divider(
                                  color: Color(0xff57A39E),
                                  thickness: 2,
                                ),
                              ),
                              AccountListTileInfoWidget(
                                icon: Icons.location_pin,
                                text: 'Address',
                                subText: '140 st - New Gersy',
                              ),
                            ],
                          ),
                        ),
                      ),
                      const VerticalSpacing(20),
                      const AccountProfileWidget(
                        label: 'Account Settings',
                      ),
                      const VerticalSpacing(20),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        // height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: const Text('Edit profile'),
                                leading: const Icon(Icons.edit),
                                onTap: () {},
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Divider(
                                  color: Color(0xff57A39E),
                                  thickness: 2,
                                ),
                              ),
                              const ListTile(
                                title: Text('Change password'),
                                leading: Icon(Icons.lock),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Divider(
                                  color: Color(0xff57A39E),
                                  thickness: 2,
                                ),
                              ),
                              ListTile(
                                title: const Text('Log out'),
                                leading: const Icon(Icons.logout),
                                onTap: () async {
                                  LogOutAlertDialog.showAlertDialog(
                                    context: context,
                                    title: 'Log out',
                                    content:
                                        'Are you sure you want to log out?',
                                    onNo: () => Navigator.pop(context),
                                    onYes: () async {
                                      await FirebaseAuth.instance.signOut();
                                      Navigator.pop(context);
                                      Navigator.pushReplacementNamed(
                                          context, '/welcome_screen');
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const VerticalSpacing(20),
                    ],
                  ),
                ),
              ]))
            ],
          ),
        ],
      ),
    );
  }
}
