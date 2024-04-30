import 'package:centa_clone/widgets/my_learnings/certifications.dart';
import 'package:centa_clone/widgets/my_learnings/learnings_widget.dart';
import 'package:centa_clone/widgets/my_learnings/my_records.dart';
import 'package:flutter/material.dart';

class MyLearningScreen extends StatefulWidget {
  const MyLearningScreen({super.key});

  @override
  State<MyLearningScreen> createState() => _MyLearningScreenState();
}

class _MyLearningScreenState extends State<MyLearningScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        TabBar(
          dividerColor: Colors.white,
          indicatorColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.blue,
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Learnings',
            ),
            Tab(
              text: 'My Records',
            ),
            Tab(
              text: 'Certifications',
            ),
          ],
        ),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: const [
            Learnings(),
            MyRecords(),
            Certifications(),
          ],
        ))
      ],
    ));
  }
}
