import 'package:flutter/material.dart';
import 'package:one_body/app/tasks.dart';
import 'package:one_body/templates.dart';
import 'package:percent_indicator/percent_indicator.dart';
List<String> tasks = ["تحضير الدرس  ننازتنزتنزنزنزنا","Missing the Students"];

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override

  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              const SizedBox(
              height: 20,
            ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 3.0),
                     child: CircularPercentIndicator(
                       radius: 30.0,
                       lineWidth: 10.0,
                       percent: 1,
                       center: tasks.isNotEmpty ?  Text("${tasks.length}", style: const TextStyle(fontSize: 30),)
                           : const Icon(Icons.handshake)
                       ,progressColor: purple,
                     ),
                   ),
                   Expanded(
                     child: Theme(
                       data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                       child: ExpansionTile(
                         title: Text("My tasks",style: TextStyle(
                           fontSize: 24,
                           color: purple
                         ),
                         ),
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: ListView.builder(
                                    itemBuilder: (BuildContext context, int i) {
                                      return
                                        TasksList(task: tasks[i]);
                                    },
                                    itemCount: tasksCompleted,
                                    shrinkWrap: true,

                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                       ),
                     ),
                   ),
                 ],
             ),
              ),
          ],
        ),
      )
    );
  }
}

class TasksList extends StatefulWidget {
  final String task;
  const TasksList({super.key, required this.task});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
@override
  Widget build(BuildContext context) {
  double cWidth = MediaQuery.of(context).size.width*0.4;

  return  Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: cWidth,
          child: Text(widget.task,style: const TextStyle(fontSize: 18),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(onPressed: (){}, child: const Text("view"))
      ],
    );
  }
}
