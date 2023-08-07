import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

Color? red = Colors.red;
Color? purple = Colors.purple;
var nationalNumberScreen=true;
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController nationalNumber = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
          children: [
             SafeArea(
               child: Container(
                 padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                 margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                 child: Column(
                    children:[
                      const Center(
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/299462305_435178308669535_5630311463326450620_n.jpeg"
                        ),
                      )
                    ),
                  ),
                      Visibility(
                        visible: nationalNumberScreen,
                        child: Form(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "National number",
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.red,
                                          ),
                                          borderRadius: BorderRadius.circular(15)
                                      )
                                  ),
                                  textInputAction: TextInputAction.done,
                                  controller: nationalNumber,
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 100,
                                  child: ElevatedButton(
                                      onPressed: (){},
                                      child: const Text(
                                        "Verify"
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                              ],
                            )),
                      ),
                      Visibility(
                        visible: !nationalNumberScreen,
                        child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "username",
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                        ),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                  ),
                                  textInputAction: TextInputAction.done,
                                     controller: username,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "password",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:  BorderSide(
                                          color: red!,
                                        ),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                  ),
                                  textInputAction: TextInputAction.done,
                                    controller: password,
                                  obscureText: true,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: (){},
                                      child:  Text("Forgot your password?", style: TextStyle(fontWeight: FontWeight.bold, color:red)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 100,
                                  child: ElevatedButton(
                                      onPressed: (){},
                                      child:  Text(
                                          "login",style: TextStyle(color: red),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                              ],
                            )),
                      )
                    ]),
               ),
             ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RotatedBox(
                      quarterTurns: 2,
                      child: Switch(
                        value: nationalNumberScreen,
                        activeTrackColor: purple,
                        inactiveTrackColor: red,
                        inactiveThumbColor: Colors.white,
                        onChanged: ( bool change ){
                        setState(() {
                          nationalNumberScreen = change;
                        });
                      },
                      ),
                    ),
                  ],
                ),
              ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("One Body",style: TextStyle(fontSize: 22),),
              ],
            ),
          ),
            ],
          )
    );
  }
}
