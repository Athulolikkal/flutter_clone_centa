import 'package:centa_clone/widgets/careers_widgets/job_card.dart';
import 'package:flutter/material.dart';

class JobsWidget extends StatelessWidget {
  final jobDetails;
  const JobsWidget({
    super.key,
    required this.jobDetails,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: jobDetails.length,
        itemBuilder: (BuildContext context, int index) {
          return JobCard(
            jobInfo: jobDetails[index],
          );
        });
  }
}
