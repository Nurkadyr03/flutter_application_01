import 'package:flutter/material.dart';
import 'package:flutter_application_01/screens/jobs/create_jobs.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("jobs"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>const CreateJobs() ),);
        },
      ),
    );
  }
}
