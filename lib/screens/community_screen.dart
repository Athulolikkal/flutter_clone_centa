import 'package:centa_clone/widgets/community_screen/explore_widget.dart';
import 'package:centa_clone/widgets/community_screen/following.dart';
import 'package:centa_clone/widgets/community_screen/mygroup_widget.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen>
    with SingleTickerProviderStateMixin {
    late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          dividerColor: Colors.white,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(text: "Explore"),
            Tab(text: "Following"),
            Tab(text: "My Groups"),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              ExploreWidget(),
              FollowingWidget(),
              MyGroupWidget(),
            ],
          ),
        )
      ],
    );
  }
}
