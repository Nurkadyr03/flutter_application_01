
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateJobs extends StatefulWidget {
  const CreateJobs({super.key});

  @override
  State<CreateJobs> createState() => _CreateJobsState();
}

class _CreateJobsState extends State<CreateJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 30),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "написать";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    hintText: 'тип работы', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 30),
              TextFormField(
                maxLines: 8,
                decoration: const InputDecoration(
                    hintText: 'описание работы',
                    border: OutlineInputBorder()),
              ),
              // CheckboxListTile(
              //     title: Text('Is Completed'),
              //     value: _isCompleted,
              //     onChanged: (v) {
              //       setState(() {
              //         _isCompleted = v ?? false;
              //       });
              //     }),
              const SizedBox(height: 30),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "написать";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    hintText: 'имя', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 30),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "написать";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    hintText: 'номер телефона', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 60),
              ElevatedButton.icon(
                onPressed: () async {
                  // if (null == null) {
                  //   showDialog(
                  //       context: context,
                  //       builder: (BuildContext context) {
                  //         return const CupertinoAlertDialog(
                  //           content: Center(
                  //             child: Padding(
                  //               padding: EdgeInsets.symmetric(vertical: 30),
                  //               child: CupertinoActivityIndicator(
                  //                 radius: 20,
                  //                 color: Colors.blue,
                  //               ),
                  //             ),
                  //           ),
                  //         );
                  //       });
        
                  Navigator.pop(context);
                  // }
                },
                icon: const Icon(Icons.publish),
                label: const Text('публиковать'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}