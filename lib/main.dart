import 'package:fintech/pages/confirm_pay.dart';
import 'package:fintech/pages/home_screen.dart';
import 'package:fintech/pages/myaccount_screen.dart';
import 'package:fintech/pages/promotion_screen.dart';
import 'package:fintech/pages/send_money.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyStack());
}

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackNav(),
    );
  }
}

class StackNav extends StatefulWidget {
  const StackNav({super.key});

  @override
  State<StackNav> createState() => _StackNavState();
}

class _StackNavState extends State<StackNav> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNav(),
        '/sendMoney': (context) => SendMoneyScreen(),
        '/confirmPay': (context) => ConfirmPaymentScreen(),
      },
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var ind = 0;

  void screenFun(int index) {
    setState(() {
      ind = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: ind,
        children: [
          HomeScreen(),
          PromotionScreen(),
          MyaccountScreen(),
          // SettingScreen(),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: ind, onTap: screenFun, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'promotions'),
        BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'myaccount'),
      ]),
    );
  }
}
