import 'package:flutter/material.dart';

// ignore: camel_case_types
class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          child: const Center(
            child: Text(
              "Status View",
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
}
