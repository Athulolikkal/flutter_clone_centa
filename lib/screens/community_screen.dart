import 'package:centa_clone/screens/create_post_screen.dart';
import 'package:centa_clone/screens/login_root.dart';
import 'package:centa_clone/widgets/community_screen/explore_widget.dart';
import 'package:centa_clone/widgets/community_screen/following.dart';
import 'package:centa_clone/widgets/community_screen/mygroup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get_storage/get_storage.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _showFloatingActionButton = true;
  bool _expandableFloatingButton = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_tabControllerListener);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _tabControllerListener() {
    setState(() {
      _showFloatingActionButton =
          _tabController.index == 0 || _tabController.index == 1;
      _expandableFloatingButton = _tabController.index == 0;
    });
  }

  void changeTabIndex(int index) {
    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
                children: [
                  const ExploreWidget(),
                  FollowingWidget(changeTabIndex: changeTabIndex),
                  const MyGroupWidget(),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: _expandableFloatingButton
            ? SpeedDial(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                animatedIcon: AnimatedIcons.menu_close,
                children: [
                  SpeedDialChild(
                    child: const Icon(Icons.poll_outlined),
                    label: 'Create a Poll!',
                  ),
                  SpeedDialChild(
                      child: const Icon(Icons.post_add_outlined),
                      label: 'Add Post',
                      onTap: () async {
                        final userDetails = await GetStorage().read('user');
                        if (userDetails != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (cntx) => const AddPostWidget(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content:
                                Text('Please login before creating a post'),
                            margin: EdgeInsets.all(10),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Color.fromARGB(255, 17, 17, 17),
                          ));
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (cntx) => const LoginRoot(),
                            ),
                            (Route<dynamic> route) => route.isFirst,
                          );
                        }
                      }),
                ],
              )
            : _showFloatingActionButton
                ? FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                : FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 25,
                    ),
                  ));
  }
}
