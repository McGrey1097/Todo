

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.cyan,
      child: const Center(child: Text('Home screen')),
    );
  }
}