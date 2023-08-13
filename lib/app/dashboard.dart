import 'package:flutter/material.dart';
import 'package:one_body/app/tasks.dart';
import 'package:one_body/templates.dart';
import 'package:percent_indicator/percent_indicator.dart';
List<String> tasks = ["Miss the students","vds","fsf"];

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            const SizedBox(
            height: 20,
          ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("My tasks",style: TextStyle(
                   fontSize: 24,
                   color: purple
                 ),
                 )
               ],
           ),
            ),
            Padding(
             padding:  const EdgeInsets.fromLTRB(20,0,20,0),
             child: Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int i) {
                      return
                       const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.library_add_check),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("title",style: TextStyle(fontSize: 18),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: tasksCompleted,
                    shrinkWrap: true,

                  ),
                ),
                CircularPercentIndicator(
                  radius: 70.0,
                  lineWidth: 10.0,
                  percent: 3/7,
                  center:  const Text("3/7", style: TextStyle(fontSize: 24),),
                  progressColor: purple,
                ),
              ],
          ),
           ),
        ],
      )
    );
  }
}

class TasksList extends StatelessWidget {
  const TasksList({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Column(
          children: [
            Icon(Icons.library_add_check),
          ],
        ),
        const SizedBox(width: 10,),
        Column(
          children: [
            Text(title,style: const TextStyle(fontSize: 18),),
          ],
        ),
      ],
    );
  }
}
