import 'package:centa_clone/widgets/login/email_login.dart';
import 'package:centa_clone/widgets/login/phone_number.dart';
import 'package:flutter/material.dart';

class LoginRoot extends StatefulWidget {
  const LoginRoot({super.key});

  @override
  State<LoginRoot> createState() => _LoginRootState();
}

class _LoginRootState extends State<LoginRoot>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Log In',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.0),
                  child: Text(
                    'Welcome back to CENTA!',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ))),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Image.asset(
              'assets/images/centa_C_logo.png',
              width: 100,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 219, 217, 217),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  dividerColor: const Color.fromARGB(255, 219, 217, 217),
                  controller: _tabController,
                  // unselectedLabelColor: Colors.black,
                  unselectedLabelStyle:
                      const TextStyle(color: Color.fromARGB(255, 48, 47, 47)),
                  // labelColor: Color.fromARGB(255, 163, 228, 58),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 12, 12, 12)),
                  tabs: const [
                    Tab(text: 'Phone Number'),
                    Tab(text: 'Email'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  LoginWithPhoneNumber(),
                  LoginWithEmail(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
