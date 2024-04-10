import 'package:centa_clone/widgets/view_details/about_tab.dart';
import 'package:centa_clone/widgets/view_details/faqs_tab.dart';
import 'package:centa_clone/widgets/view_details/reviews_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabBarViewDetails extends StatefulWidget {
  const TabBarViewDetails({super.key});

  @override
  State<TabBarViewDetails> createState() => _TabBarViewDetailsState();
}

class _TabBarViewDetailsState extends State<TabBarViewDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TabBar(
            dividerColor: Colors.white,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            indicatorColor: Colors.blue,
            tabs: const [
              Tab(text: "About"),
              Tab(text: "Reviews"),
              Tab(text: "FAQs"),
            ],
          ),
          // Flexible(
          //   child: TabBarView(
          //     controller: _tabController,
          //     children:const [
          //       AboutTab(),
          //       ReviewsTab(),
          //       FaqsTab()
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
