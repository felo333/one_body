import 'package:flutter/material.dart';
import 'package:one_body/templates.dart';

class SpiritualNote extends StatelessWidget {
  const SpiritualNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
    );
  }
}
