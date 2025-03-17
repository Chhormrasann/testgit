import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2_4/pages/home.dart';
import 'package:flutter_application_2_4/pages/profile.dart';
import 'package:flutter_application_2_4/pages/wallet.dart';
import 'order.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;

  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = Home();
    order = Order();
    profile = Profile();
    wallet = Wallet();

    pages = [
      homepage,
      order,
      wallet,
      profile,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          backgroundColor: Colors.white,
          color: Colors.amber,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.wallet_giftcard_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.person_outlined,
              color: Colors.black,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
