import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class mycontuner extends StatelessWidget {
  const mycontuner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 100.00,
            height: 100.00,
            decoration: BoxDecoration(
                color: Colors.yellow,
                // borderRadius: BorderRadius.circular(10.00),
                shape: BoxShape.circle),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "mail/phone number",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "useer",
                hintText: "password",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
