import 'package:flutter/material.dart';
import 'package:one_body/app/attendance.dart';
import 'package:one_body/templates.dart';

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: grey,
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(50),
              crossAxisSpacing: 30,
              mainAxisSpacing: 50,
              crossAxisCount: 2,
              children:  [
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                   // color: Colors.white   ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.people,size: 60,color: purple,),
                        const Text("Students",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  onTap: (){

                  },
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    // color: Colors.white   ,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.back_hand,size: 60,color: purple,),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Attendance",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext builder) => const Attendance()));
                  },
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    // color: Colors.white   ,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.handshake,size: 60,color: purple,),
                        const Text("Visits",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  onTap: (){

                  },
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    // color: Colors.white   ,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.show_chart,size: 60,color: purple,),
                        const Text("Statistics",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  onTap: (){

                  },
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
