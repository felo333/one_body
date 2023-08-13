import 'package:flutter/material.dart';
import 'package:one_body/app/services.dart';
import 'package:one_body/app/settings.dart';
import 'package:one_body/app/spiritualNote.dart';
import 'package:one_body/app/tasks.dart';

import 'app/courses.dart';
import 'app/dashboard.dart';

Color? red = Colors.red;
Color? purple = Colors.purple;
dynamic title = "One Body";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        children:  <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: red),
            padding: const EdgeInsets.all(10),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/download.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [Text("Philopateer",style: TextStyle(fontSize: 15),),
                    Text("2022-048S",style: TextStyle(fontSize: 17),),
                  ],
                ),
              ],
            ) ,
          ),ListTile(
              leading: const Icon(Icons.dashboard,color: Colors.black,),
              title: const Text("Dashboard",style: TextStyle(fontSize: 19),),
              onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()),)
          ),ListTile(
              leading: const Icon(Icons.church,color: Colors.black,),
              title: const Text("My Services",style: TextStyle(fontSize: 19),),
              onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const Services()),)
          ),ListTile(
              leading: const Icon(Icons.monitor_heart,color: Colors.black,),
              title: const Text("SpiritualNote",style: TextStyle(fontSize: 19),),
              onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const SpiritualNote()),)
          ),ListTile(
              leading: const Icon(Icons.tv,color: Colors.black,),
              title: const Text("Courses",style: TextStyle(fontSize: 19),),
              onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const Courses()),)
          ),ListTile(
              leading: const Icon(Icons.task_alt,color: Colors.black,),
              title: const Text("Tasks",style: TextStyle(fontSize: 19),),
              onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const Tasks()),)
          ),ListTile(
              leading: const Icon(Icons.settings,color: Colors.black,),
              title: const Text("Settings",style: TextStyle(fontSize: 19),),
              onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings()),)
          )
        ],
      ) ,
    );

  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  Text(title,style: const TextStyle(fontSize: 25,color: Colors.black),
      ),
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.black,//change color on your need
      ),
    );
  }
}
