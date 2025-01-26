import 'package:flutter/material.dart';
import 'package:trainbooking/trains_screen.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Schedule"), backgroundColor: Colors.green.shade200),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            dropdownField("Start Station"),
            dropdownField("Start Time"),
            dropdownField("End Station"),
            dropdownField("End Time"),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: "Date", border: OutlineInputBorder()),
            ),
        SizedBox(height: 20),

        // Search Train Button
        Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to Train Screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => trains_screen()),
              );
            },
            child: Text("Search Train"),
            ),
        )],
        ),
      ),
    );
  }

  Widget dropdownField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: DropdownButtonFormField(
        decoration: InputDecoration(labelText: label, border: OutlineInputBorder()),
        items: const [DropdownMenuItem(value: "Select", child: Text("-SELECT-"))],
        onChanged: (value) {},
      ),
    );
  }
}
