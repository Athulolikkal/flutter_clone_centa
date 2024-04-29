import 'package:centa_clone/data/job_data.dart';
import 'package:centa_clone/widgets/careers_widgets/jobs_screen.dart';
import 'package:centa_clone/widgets/careers_widgets/my_jobs_screen.dart';
import 'package:flutter/material.dart';

class CareersScreen extends StatefulWidget {
  const CareersScreen({super.key});

  @override
  State<CareersScreen> createState() => _CareersScreenState();
}

class _CareersScreenState extends State<CareersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void changeTabIndex(int index) {
    _tabController.animateTo(index);
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
              text: 'Jobs',
            ),
            Tab(
              text: 'My Jobs',
            ),
          ],
        ),
        Expanded(
            child: TabBarView(controller: _tabController, children: [
          JobsWidget(
            jobDetails: jobDetails,
          ),
          MyJobsWidget(changeTabIndex: changeTabIndex),
        ]))
      ],
    ));
  }
}
