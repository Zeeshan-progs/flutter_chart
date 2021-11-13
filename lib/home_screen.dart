import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Ep 1 SfCartesion Chart/chart_screen.dart';
import 'Ep 2 SfCircular Chart/chart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                button(
                  context,
                  widget: const LineChart(),
                  text: 'Episode 1 SfCartesianChart',
                ),
                button(
                  context,
                  widget: const CircularChart(),
                  text: 'Episode 2 SfCircularChart ',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget button(
    BuildContext context, {
    required Widget widget,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10,
      ),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19),
        ),
        color: Color.fromARGB(
          Random().nextInt(100),
          Random().nextInt(150),
          Random().nextInt(225),
          Random().nextInt(25),
        ).withOpacity(.2),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => widget,
              ),
            );
          },
          title: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
