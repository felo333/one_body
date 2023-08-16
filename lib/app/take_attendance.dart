import 'package:flutter/material.dart';

import '../templates.dart';

List students = ["أرساني جرجس سعد","أفرايم نبيل سعيد","إبرام ميلاد جابر","أبانوب عصام حسني ميخائيل","أبانوب أيمن فوزي زخاري"];
class TakeAttendance extends StatelessWidget {
  const TakeAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body:  Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.face),
                  iconSize: 60,
                  color: purple,
              ),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.qr_code),
                  iconSize: 60,
                  color: purple,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (BuildContext context, int i){
                return  StudentAttendance(student: "Students[i]",selected1: false,selected2: false,);
              },
            ),
          ),
        ],
      ),
    );
  }
}


class StudentAttendance extends StatefulWidget {
  final String student;
   late bool selected1 ;
   late bool selected2 ;

   StudentAttendance({super.key, required this.student, required this.selected1, required this.selected2});

  @override
  State<StudentAttendance> createState() => _StudentAttendanceState();
}

class _StudentAttendanceState extends State<StudentAttendance> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          const SizedBox(
            width: 70,
            height: 70,
            child: CircleAvatar(
              backgroundImage:  AssetImage("assets/WhatsApp Image 2023-08-15 at 5.41.28 PM.jpeg"),
              ),

             
          ),
          const SizedBox(
            width: 20,
          ),
           SizedBox(
             width: MediaQuery.of(context).size.width*0.4,
               child: Text(widget.student,style: const TextStyle(fontSize: 22),)),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: [
              IconButton(
                iconSize: 40,
                color: widget.selected1? Colors.green : Colors.grey,
                onPressed: () {
                  setState(() {
                    widget.selected1 = true;
                    widget.selected2 = false;
                  });
                },
                icon: const Icon(Icons.circle),
              ),
              IconButton(
                iconSize: 40,
                color: widget.selected2? Colors.red : Colors.grey,
                onPressed: () {
                  setState(() {
                    widget.selected2 = true;
                    widget.selected1 = false;
                  });
                },
                icon: const Icon(Icons.circle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
