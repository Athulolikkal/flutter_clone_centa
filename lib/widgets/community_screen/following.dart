import 'package:centa_clone/widgets/community_screen/explore_widget.dart';
import 'package:flutter/material.dart';

class FollowingWidget extends StatelessWidget {
   final void Function(int) changeTabIndex;
  const FollowingWidget({super.key,required this.changeTabIndex});

  @override
  Widget build(BuildContext context) {
    bool isNoData = true;
    return Padding(
      padding:const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        child: isNoData
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      'assets/images/empty_data.png',
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                  ),
                  const Text(
                    'Oh No!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'your are not following any users yet.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                    //  Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => ExploreWidget(),
                    //     ),
                    //   );
                     changeTabIndex(0);
                    },
                    child: const Text(
                      "Let's explore",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              )
            : Text('data is here'),
      ),
    );
  }
}
