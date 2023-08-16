import 'package:flutter/material.dart';
import 'package:one_body/app/class.dart';
import 'package:one_body/templates.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: grey,
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
             itemCount: 1,
             itemBuilder: (BuildContext context, int i){
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext builder) => const MyClass()));
          },
          child: Container(
            height: 300,
            width: 800,
            color: Colors.white,
            child: const Column(
              children: [
                Image(image: AssetImage("assets/TheGoodShepherd.jpeg")),
                Padding(padding: EdgeInsets.all(2)),
                Text("أولى وتانية ابتدائي كنيسة",style: TextStyle(fontSize: 25),)
              ],
            ),
          ),
        ),
      );
    },
      ),
          ],
        ),
    )
    );
  }
}
