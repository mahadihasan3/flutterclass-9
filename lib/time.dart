import 'package:flutter/material.dart';

class TimepickerScreen extends StatefulWidget {
  const TimepickerScreen({Key? key}) : super(key: key);

  @override
  State<TimepickerScreen> createState() => _TimepickerScreenState();
}

class _TimepickerScreenState extends State<TimepickerScreen> {
  DateTime? dateTime = DateTime.now();

  Future<void> _selectDate(context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: dateTime!,
        firstDate: DateTime(2001),
        lastDate: DateTime(2025));
    if (picked != null) {
      setState(() {
        dateTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 252, 68),
      appBar: AppBar(
        title: Text("date"),
        backgroundColor: Color.fromARGB(255, 96, 255, 64),
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(dateTime.toString()),
            ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                },
                child: Text("Select Date"))
          ],
        ),
      ),
    );
  }
}
