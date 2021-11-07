import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chart/chart_type/day1_line_chart.dart';

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
                  image: 'assets/line_chart.png',
                  widget: const LineChart(),
                  text: 'Line Chart',
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
    required String image,
    required Widget widget,
    required String text,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(19),
      ),
      color: Color.fromARGB(
        Random().nextInt(125),
        Random().nextInt(125),
        Random().nextInt(125),
        Random().nextInt(125),
      ).withOpacity(.5),
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
        leading: Image.asset(
          image,
          fit: BoxFit.cover,
          height: 100,
          filterQuality: FilterQuality.high,
          width: 100,
        ),
        title: Row(
          children: [
            // Icon(CupertinoIcons.chart),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
