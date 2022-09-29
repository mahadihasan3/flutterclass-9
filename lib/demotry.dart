import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class demotr extends StatefulWidget {
  const demotr({Key? key}) : super(key: key);

  @override
  State<demotr> createState() => _demotrState();
}

class _demotrState extends State<demotr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: Icon(Icons.home),
        title: Text("name"),
        trailing: Icon(Icons.zoom_in),
      ),
    );
  }
}
