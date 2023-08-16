import 'package:flutter/material.dart';
import 'package:one_body/app/take_attendance.dart';
import 'package:one_body/templates.dart';

List fridays = ["11/8/2023","18/8/2023","25/8/2023","1/9/2023"];
class Attendance extends StatelessWidget {
  const Attendance({super.key});

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
              height: 100,
            ),
            SizedBox(
              height: 300,
              //width: ,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: fridays.length,
                itemBuilder: (BuildContext context, int i){
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext builder) => const TakeAttendance()));
                      },
                      child: Container(
                        height: 300,
                        width: 300,
                        color: Colors.white,
                        child:  Column(
                          children: [
                            const Image(image: AssetImage("assets/TheGoodShepherd.jpeg")),
                            const Padding(padding: EdgeInsets.all(2)),
                            Text(fridays[i],style: const TextStyle(fontSize: 25),)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
